
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ast_private {int dummy; } ;


 scalar_t__ TIMEOUT ;
 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void ddr_phy_init_2500(struct ast_private *ast)
{
 u32 data, pass, timecnt;

 pass = 0;
 ast_moutdwm(ast, 0x1E6E0060, 0x00000005);
 while (!pass) {
  for (timecnt = 0; timecnt < TIMEOUT; timecnt++) {
   data = ast_mindwm(ast, 0x1E6E0060) & 0x1;
   if (!data)
    break;
  }
  if (timecnt != TIMEOUT) {
   data = ast_mindwm(ast, 0x1E6E0300) & 0x000A0000;
   if (!data)
    pass = 1;
  }
  if (!pass) {
   ast_moutdwm(ast, 0x1E6E0060, 0x00000000);
   udelay(10);
   ast_moutdwm(ast, 0x1E6E0060, 0x00000005);
  }
 }

 ast_moutdwm(ast, 0x1E6E0060, 0x00000006);
}
