
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ast_private {int dummy; } ;


 size_t CBR_PASSNUM2 ;
 size_t CBR_PATNUM ;
 int ast_moutdwm (struct ast_private*,int,int ) ;
 size_t cbr_test2 (struct ast_private*) ;
 int * pattern ;

__attribute__((used)) static u32 cbr_scan2(struct ast_private *ast)
{
 u32 data, data2, patcnt, loop;

 data2 = 0xffff;
 for (patcnt = 0; patcnt < CBR_PATNUM; patcnt++) {
  ast_moutdwm(ast, 0x1e6e007c, pattern[patcnt]);
  for (loop = 0; loop < CBR_PASSNUM2; loop++) {
   if ((data = cbr_test2(ast)) != 0) {
    data2 &= data;
    if (!data2)
     return 0;
    break;
   }
  }
  if (loop == CBR_PASSNUM2)
   return 0;
 }
 return data2;
}
