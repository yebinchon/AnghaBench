
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dm_pp_clock_for_voltage_req {int clocks_in_khz; int clk_type; int member_0; } ;
struct TYPE_6__ {int dispclk_khz; } ;
struct TYPE_7__ {TYPE_1__ dce; } ;
struct TYPE_8__ {TYPE_2__ bw; } ;
struct dc_state {TYPE_3__ bw_ctx; } ;
struct clk_mgr_internal {scalar_t__ xgmi_enabled; int dfs_bypass_active; } ;
struct TYPE_9__ {int dispclk_khz; int phyclk_khz; } ;
struct clk_mgr {TYPE_5__* ctx; TYPE_4__ clks; } ;
struct TYPE_10__ {int dc; } ;


 int DM_PP_CLOCK_TYPE_DISPLAYPHYCLK ;
 int DM_PP_CLOCK_TYPE_DISPLAY_CLK ;
 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;
 int dce112_set_clock (struct clk_mgr*,int) ;
 int dce11_pplib_apply_display_requirements (int ,struct dc_state*) ;
 int dce_adjust_dp_ref_freq_for_ss (struct clk_mgr_internal*,int) ;
 int dce_get_max_pixel_clock_for_all_paths (struct dc_state*) ;
 int dm_pp_apply_clock_for_voltage_request (TYPE_5__*,struct dm_pp_clock_for_voltage_req*) ;
 scalar_t__ should_set_clock (int,int,int) ;

__attribute__((used)) static void dce12_update_clocks(struct clk_mgr *clk_mgr_base,
   struct dc_state *context,
   bool safe_to_lower)
{
 struct clk_mgr_internal *clk_mgr_dce = TO_CLK_MGR_INTERNAL(clk_mgr_base);
 struct dm_pp_clock_for_voltage_req clock_voltage_req = {0};
 int max_pix_clk = dce_get_max_pixel_clock_for_all_paths(context);
 int patched_disp_clk = context->bw_ctx.bw.dce.dispclk_khz;


 if (!clk_mgr_dce->dfs_bypass_active)
  patched_disp_clk = patched_disp_clk * 115 / 100;

 if (should_set_clock(safe_to_lower, patched_disp_clk, clk_mgr_base->clks.dispclk_khz)) {
  clock_voltage_req.clk_type = DM_PP_CLOCK_TYPE_DISPLAY_CLK;




  if (clk_mgr_dce->xgmi_enabled)
   patched_disp_clk = dce_adjust_dp_ref_freq_for_ss(
     clk_mgr_dce, patched_disp_clk);
  clock_voltage_req.clocks_in_khz = patched_disp_clk;
  clk_mgr_base->clks.dispclk_khz = dce112_set_clock(clk_mgr_base, patched_disp_clk);

  dm_pp_apply_clock_for_voltage_request(clk_mgr_base->ctx, &clock_voltage_req);
 }

 if (should_set_clock(safe_to_lower, max_pix_clk, clk_mgr_base->clks.phyclk_khz)) {
  clock_voltage_req.clk_type = DM_PP_CLOCK_TYPE_DISPLAYPHYCLK;
  clock_voltage_req.clocks_in_khz = max_pix_clk;
  clk_mgr_base->clks.phyclk_khz = max_pix_clk;

  dm_pp_apply_clock_for_voltage_request(clk_mgr_base->ctx, &clock_voltage_req);
 }
 dce11_pplib_apply_display_requirements(clk_mgr_base->ctx->dc, context);
}
