
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_smu_funcs {int dummy; } ;
struct fixed31_32 {int value; } ;
struct dccg {int dummy; } ;
struct dc_context {int dce_environment; } ;
struct TYPE_4__ {int dprefclk_khz; TYPE_2__* funcs; struct dc_context* ctx; } ;
struct clk_mgr_internal {int dprefclk_ss_divider; int ss_on_dprefclk; int dentist_vco_freq_khz; int dfs_bypass_enabled; TYPE_1__ base; TYPE_3__* clk_mgr_mask; scalar_t__ dprefclk_ss_percentage; scalar_t__ dfs_bypass_disp_clk; struct dccg* dccg; int * clk_mgr_shift; int * regs; struct pp_smu_funcs* pp_smu; } ;
struct TYPE_6__ {int FbMult_int; int FbMult_frac; } ;
struct TYPE_5__ {int update_clocks; } ;


 int CLK3_CLK2_DFS_CNTL ;
 int CLK3_CLK_PLL_REQ ;
 int DENTIST_DIVIDER_RANGE_SCALE_FACTOR ;
 scalar_t__ IS_FPGA_MAXIMUS_DC (int ) ;
 void* REG_READ (int ) ;
 TYPE_3__ clk_mgr_mask ;
 int clk_mgr_regs ;
 int clk_mgr_shift ;
 int dc_fixpt_floor (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_from_int (int) ;
 struct fixed31_32 dc_fixpt_mul_int (struct fixed31_32,int) ;
 int dce_clock_read_ss_info (struct clk_mgr_internal*) ;
 TYPE_2__ dcn2_funcs ;
 int dcn2_update_clocks_fpga ;
 int dentist_get_divider_from_did (int) ;

void dcn20_clk_mgr_construct(
  struct dc_context *ctx,
  struct clk_mgr_internal *clk_mgr,
  struct pp_smu_funcs *pp_smu,
  struct dccg *dccg)
{
 clk_mgr->base.ctx = ctx;
 clk_mgr->pp_smu = pp_smu;
 clk_mgr->base.funcs = &dcn2_funcs;
 clk_mgr->regs = &clk_mgr_regs;
 clk_mgr->clk_mgr_shift = &clk_mgr_shift;
 clk_mgr->clk_mgr_mask = &clk_mgr_mask;

 clk_mgr->dccg = dccg;
 clk_mgr->dfs_bypass_disp_clk = 0;

 clk_mgr->dprefclk_ss_percentage = 0;
 clk_mgr->dprefclk_ss_divider = 1000;
 clk_mgr->ss_on_dprefclk = 0;

 clk_mgr->base.dprefclk_khz = 700000;

 if (IS_FPGA_MAXIMUS_DC(ctx->dce_environment)) {
  dcn2_funcs.update_clocks = dcn2_update_clocks_fpga;
  clk_mgr->dentist_vco_freq_khz = 3850000;

 } else {

  int dprefclk_did = REG_READ(CLK3_CLK2_DFS_CNTL);

  int target_div = dentist_get_divider_from_did(dprefclk_did);


  uint32_t pll_req_reg = REG_READ(CLK3_CLK_PLL_REQ);
  struct fixed31_32 pll_req;






  pll_req = dc_fixpt_from_int(pll_req_reg & clk_mgr->clk_mgr_mask->FbMult_int);
  pll_req.value |= pll_req_reg & clk_mgr->clk_mgr_mask->FbMult_frac;


  pll_req = dc_fixpt_mul_int(pll_req, 100000);


  clk_mgr->dentist_vco_freq_khz = dc_fixpt_floor(pll_req);


  if (clk_mgr->dentist_vco_freq_khz == 0)
   clk_mgr->dentist_vco_freq_khz = 3850000;


  clk_mgr->base.dprefclk_khz = (DENTIST_DIVIDER_RANGE_SCALE_FACTOR
   * clk_mgr->dentist_vco_freq_khz) / target_div;
 }



 clk_mgr->dfs_bypass_enabled = 0;

 dce_clock_read_ss_info(clk_mgr);
}
