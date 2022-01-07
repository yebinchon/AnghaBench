
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ast_private {int dummy; } ;


 size_t CBR_PATNUM ;
 int ast_moutdwm (struct ast_private*,int,int ) ;
 scalar_t__ cbr_test3 (struct ast_private*) ;
 int * pattern ;

__attribute__((used)) static bool cbr_scan3(struct ast_private *ast)
{
 u32 patcnt, loop;

 for (patcnt = 0; patcnt < CBR_PATNUM; patcnt++) {
  ast_moutdwm(ast, 0x1e6e007c, pattern[patcnt]);
  for (loop = 0; loop < 2; loop++) {
   if (cbr_test3(ast))
    break;
  }
  if (loop == 2)
   return 0;
 }
 return 1;
}
