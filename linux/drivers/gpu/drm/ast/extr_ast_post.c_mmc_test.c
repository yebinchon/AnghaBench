
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ast_private {int dummy; } ;


 int TIMEOUT ;
 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;

__attribute__((used)) static bool mmc_test(struct ast_private *ast, u32 datagen, u8 test_ctl)
{
 u32 data, timeout;

 ast_moutdwm(ast, 0x1e6e0070, 0x00000000);
 ast_moutdwm(ast, 0x1e6e0070, (datagen << 3) | test_ctl);
 timeout = 0;
 do {
  data = ast_mindwm(ast, 0x1e6e0070) & 0x3000;
  if (data & 0x2000)
   return 0;
  if (++timeout > TIMEOUT) {
   ast_moutdwm(ast, 0x1e6e0070, 0x00000000);
   return 0;
  }
 } while (!data);
 ast_moutdwm(ast, 0x1e6e0070, 0x0);
 return 1;
}
