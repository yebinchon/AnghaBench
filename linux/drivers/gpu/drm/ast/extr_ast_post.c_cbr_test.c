
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;


 int mmc_test_burst2 (struct ast_private*,int) ;
 int mmc_test_single2 (struct ast_private*,int ) ;

__attribute__((used)) static int cbr_test(struct ast_private *ast)
{
 u32 data;
 int i;
 data = mmc_test_single2(ast, 0);
 if ((data & 0xff) && (data & 0xff00))
  return 0;
 for (i = 0; i < 8; i++) {
  data = mmc_test_burst2(ast, i);
  if ((data & 0xff) && (data & 0xff00))
   return 0;
 }
 if (!data)
  return 3;
 else if (data & 0xff)
  return 2;
 return 1;
}
