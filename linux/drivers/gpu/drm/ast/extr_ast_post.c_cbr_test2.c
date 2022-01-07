
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;


 int mmc_test_burst2 (struct ast_private*,int ) ;
 int mmc_test_single2 (struct ast_private*,int ) ;

__attribute__((used)) static u32 cbr_test2(struct ast_private *ast)
{
 u32 data;

 data = mmc_test_burst2(ast, 0);
 if (data == 0xffff)
  return 0;
 data |= mmc_test_single2(ast, 0);
 if (data == 0xffff)
  return 0;

 return ~data & 0xffff;
}
