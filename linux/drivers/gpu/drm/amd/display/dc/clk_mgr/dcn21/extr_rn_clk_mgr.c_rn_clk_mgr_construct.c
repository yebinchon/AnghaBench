
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pp_smu_wm_range_sets {int member_0; } ;
struct TYPE_6__ {int pp_smu; int (* set_wm_ranges ) (int *,struct pp_smu_wm_range_sets*) ;int (* get_dpm_clock_table ) (int *,struct dpm_clocks*) ;} ;
struct pp_smu_funcs {TYPE_2__ rn_funcs; } ;
struct dpm_clocks {int member_0; } ;
struct dccg {int dummy; } ;
struct dc_debug_options {int disable_48mhz_pwrdwn; int disable_pplib_wm_range; } ;
struct dc_context {int asic_id; int dce_environment; TYPE_1__* dc; } ;
struct clk_state_registers_and_bypass {int dprefclk; int member_0; } ;
struct TYPE_7__ {int dprefclk_khz; int * bw_params; TYPE_4__* funcs; struct dc_context* ctx; } ;
struct clk_mgr_internal {int dprefclk_ss_divider; int ss_on_dprefclk; int dfs_ref_freq_khz; int dentist_vco_freq_khz; TYPE_3__ base; int smu_ver; scalar_t__ dprefclk_ss_percentage; scalar_t__ dfs_bypass_disp_clk; struct dccg* dccg; struct pp_smu_funcs* pp_smu; } ;
struct clk_log_info {int member_0; } ;
struct TYPE_8__ {int update_clocks; } ;
struct TYPE_5__ {struct dc_debug_options debug; } ;


 int ASSERT (int) ;
 scalar_t__ IS_FPGA_MAXIMUS_DC (int ) ;
 int build_watermark_ranges (int *,struct pp_smu_wm_range_sets*) ;
 int clk_mgr_helper_populate_bw_params (int *,struct dpm_clocks*,int *) ;
 int dce_clock_read_ss_info (struct clk_mgr_internal*) ;
 TYPE_4__ dcn21_funcs ;
 int dcn2_update_clocks_fpga ;
 int get_vco_frequency_from_reg (struct clk_mgr_internal*) ;
 int rn_bw_params ;
 int rn_dump_clk_registers (struct clk_state_registers_and_bypass*,TYPE_3__*,struct clk_log_info*) ;
 int rn_vbios_smu_enable_48mhz_tmdp_refclk_pwrdwn (struct clk_mgr_internal*) ;
 int rn_vbios_smu_get_smu_version (struct clk_mgr_internal*) ;
 int stub1 (int *,struct dpm_clocks*) ;
 int stub2 (int *,struct pp_smu_wm_range_sets*) ;

void rn_clk_mgr_construct(
  struct dc_context *ctx,
  struct clk_mgr_internal *clk_mgr,
  struct pp_smu_funcs *pp_smu,
  struct dccg *dccg)
{
 struct dc_debug_options *debug = &ctx->dc->debug;
 struct dpm_clocks clock_table = { 0 };
 struct clk_state_registers_and_bypass s = { 0 };

 clk_mgr->base.ctx = ctx;
 clk_mgr->base.funcs = &dcn21_funcs;

 clk_mgr->pp_smu = pp_smu;

 clk_mgr->dccg = dccg;
 clk_mgr->dfs_bypass_disp_clk = 0;

 clk_mgr->dprefclk_ss_percentage = 0;
 clk_mgr->dprefclk_ss_divider = 1000;
 clk_mgr->ss_on_dprefclk = 0;
 clk_mgr->dfs_ref_freq_khz = 48000;

 clk_mgr->smu_ver = rn_vbios_smu_get_smu_version(clk_mgr);

 if (IS_FPGA_MAXIMUS_DC(ctx->dce_environment)) {
  dcn21_funcs.update_clocks = dcn2_update_clocks_fpga;
  clk_mgr->dentist_vco_freq_khz = 3600000;
  clk_mgr->base.dprefclk_khz = 600000;
 } else {
  struct clk_log_info log_info = {0};


  clk_mgr->dentist_vco_freq_khz = get_vco_frequency_from_reg(clk_mgr);


  if (clk_mgr->dentist_vco_freq_khz == 0)
   clk_mgr->dentist_vco_freq_khz = 3600000;

  rn_dump_clk_registers(&s, &clk_mgr->base, &log_info);
  clk_mgr->base.dprefclk_khz = s.dprefclk;

  if (clk_mgr->base.dprefclk_khz != 600000) {
   clk_mgr->base.dprefclk_khz = 600000;
   ASSERT(1);
  }


  if (clk_mgr->base.dprefclk_khz == 0)
   clk_mgr->base.dprefclk_khz = 600000;
 }

 dce_clock_read_ss_info(clk_mgr);

 clk_mgr->base.bw_params = &rn_bw_params;

 if (pp_smu) {
  pp_smu->rn_funcs.get_dpm_clock_table(&pp_smu->rn_funcs.pp_smu, &clock_table);
  clk_mgr_helper_populate_bw_params(clk_mgr->base.bw_params, &clock_table, &ctx->asic_id);
 }






 if (!debug->disable_pplib_wm_range) {
  struct pp_smu_wm_range_sets ranges = {0};

  build_watermark_ranges(clk_mgr->base.bw_params, &ranges);


  if (pp_smu && pp_smu->rn_funcs.set_wm_ranges)
   pp_smu->rn_funcs.set_wm_ranges(&pp_smu->rn_funcs.pp_smu, &ranges);
 }


 if (!debug->disable_48mhz_pwrdwn)
  rn_vbios_smu_enable_48mhz_tmdp_refclk_pwrdwn(clk_mgr);
}
