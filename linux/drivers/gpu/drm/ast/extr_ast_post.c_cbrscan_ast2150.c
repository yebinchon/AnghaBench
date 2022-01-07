
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ast_private {int dummy; } ;


 size_t CBR_PASSNUM_AST2150 ;
 size_t CBR_PATNUM_AST2150 ;
 int ast_moutdwm (struct ast_private*,int,int ) ;
 scalar_t__ cbrtest_ast2150 (struct ast_private*) ;
 int * pattern_AST2150 ;

__attribute__((used)) static int cbrscan_ast2150(struct ast_private *ast, int busw)
{
 u32 patcnt, loop;

 for (patcnt = 0; patcnt < CBR_PATNUM_AST2150; patcnt++) {
  ast_moutdwm(ast, 0x1e6e007c, pattern_AST2150[patcnt]);
  for (loop = 0; loop < CBR_PASSNUM_AST2150; loop++) {
   if (cbrtest_ast2150(ast))
    break;
  }
  if (loop == CBR_PASSNUM_AST2150)
   return 0;
 }
 return 1;
}
