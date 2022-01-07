
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_private {int dummy; } ;


 int mmc_test_burst (struct ast_private*,int ) ;
 int mmc_test_single (struct ast_private*,int ) ;

__attribute__((used)) static bool cbr_test3(struct ast_private *ast)
{
 if (!mmc_test_burst(ast, 0))
  return 0;
 if (!mmc_test_single(ast, 0))
  return 0;
 return 1;
}
