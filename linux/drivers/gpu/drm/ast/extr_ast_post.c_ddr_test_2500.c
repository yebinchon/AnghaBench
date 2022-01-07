
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_private {int dummy; } ;


 int ast_moutdwm (struct ast_private*,int,int) ;
 int mmc_test_burst (struct ast_private*,int) ;
 int mmc_test_single_2500 (struct ast_private*,int ) ;

__attribute__((used)) static bool ddr_test_2500(struct ast_private *ast)
{
 ast_moutdwm(ast, 0x1E6E0074, 0x0000FFFF);
 ast_moutdwm(ast, 0x1E6E007C, 0xFF00FF00);
 if (!mmc_test_burst(ast, 0))
  return 0;
 if (!mmc_test_burst(ast, 1))
  return 0;
 if (!mmc_test_burst(ast, 2))
  return 0;
 if (!mmc_test_burst(ast, 3))
  return 0;
 if (!mmc_test_single_2500(ast, 0))
  return 0;
 return 1;
}
