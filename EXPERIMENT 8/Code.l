%{
/* Vidhi Bodhare PRN:24070521205*/
#include <stdio.h>
#include "y.tab.h"
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[-+*/]      { return yytext[0]; }
[ \t]       ; /* Skip whitespace */
\n          { return '\n'; }
.           { printf("%s", yytext); }

%%

int yywrap(void) {
    return 1;
}
