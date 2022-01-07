
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;


 int ast2500_ddr3_1600_timing_table ;
 int ast2500_ddr4_1600_timing_table ;
 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;
 int ddr3_init_2500 (struct ast_private*,int ) ;
 int ddr4_init_2500 (struct ast_private*,int ) ;
 int ddr_init_common_2500 (struct ast_private*) ;
 int ddr_test_2500 (struct ast_private*) ;
 int reset_mmc_2500 (struct ast_private*) ;
 int set_mpll_2500 (struct ast_private*) ;

__attribute__((used)) static bool ast_dram_init_2500(struct ast_private *ast)
{
 u32 data;
 u32 max_tries = 5;

 do {
  if (max_tries-- == 0)
   return 0;
  set_mpll_2500(ast);
  reset_mmc_2500(ast);
  ddr_init_common_2500(ast);

  data = ast_mindwm(ast, 0x1E6E2070);
  if (data & 0x01000000)
   ddr4_init_2500(ast, ast2500_ddr4_1600_timing_table);
  else
   ddr3_init_2500(ast, ast2500_ddr3_1600_timing_table);
 } while (!ddr_test_2500(ast));

 ast_moutdwm(ast, 0x1E6E2040, ast_mindwm(ast, 0x1E6E2040) | 0x41);


 data = ast_mindwm(ast, 0x1E6E200C) & 0xF9FFFFFF;
 ast_moutdwm(ast, 0x1E6E200C, data | 0x10000000);

 return 1;
}
