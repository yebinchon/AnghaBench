
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct dmcu {TYPE_8__* funcs; } ;
struct TYPE_13__ {TYPE_4__* ctx; } ;
struct dce_clk_mgr {int dentist_vco_freq_khz; int dfs_bypass_disp_clk; int cur_min_clks_state; scalar_t__ dfs_bypass_active; TYPE_5__ base; } ;
struct dc_bios {TYPE_7__* funcs; } ;
struct clk_mgr {TYPE_1__* ctx; } ;
struct TYPE_14__ {int SET_DISPCLK_DFS_BYPASS; } ;
struct bp_pixel_clock_parameters {int target_pixel_clock_100hz; int dfs_bypass_display_clock; TYPE_6__ flags; int pll_id; int member_0; } ;
struct TYPE_16__ {int (* set_psr_wait_loop ) (struct dmcu*,int) ;scalar_t__ (* is_dmcu_initialized ) (struct dmcu*) ;} ;
struct TYPE_15__ {int (* program_display_engine_pll ) (struct dc_bios*,struct bp_pixel_clock_parameters*) ;} ;
struct TYPE_12__ {TYPE_3__* dc; } ;
struct TYPE_11__ {TYPE_2__* res_pool; } ;
struct TYPE_10__ {struct dmcu* dmcu; } ;
struct TYPE_9__ {struct dc_bios* dc_bios; } ;


 int CLOCK_SOURCE_ID_DFS ;
 int DM_PP_CLOCKS_STATE_NOMINAL ;
 struct dce_clk_mgr* TO_DCE_CLK_MGR (struct clk_mgr*) ;
 int max (int,int) ;
 int stub1 (struct dc_bios*,struct bp_pixel_clock_parameters*) ;
 scalar_t__ stub2 (struct dmcu*) ;
 int stub3 (struct dmcu*,int) ;

__attribute__((used)) static int dce_set_clock(
 struct clk_mgr *clk_mgr,
 int requested_clk_khz)
{
 struct dce_clk_mgr *clk_mgr_dce = TO_DCE_CLK_MGR(clk_mgr);
 struct bp_pixel_clock_parameters pxl_clk_params = { 0 };
 struct dc_bios *bp = clk_mgr->ctx->dc_bios;
 int actual_clock = requested_clk_khz;
 struct dmcu *dmcu = clk_mgr_dce->base.ctx->dc->res_pool->dmcu;


 if (requested_clk_khz > 0)
  requested_clk_khz = max(requested_clk_khz,
    clk_mgr_dce->dentist_vco_freq_khz / 64);


 pxl_clk_params.target_pixel_clock_100hz = requested_clk_khz * 10;
 pxl_clk_params.pll_id = CLOCK_SOURCE_ID_DFS;

 if (clk_mgr_dce->dfs_bypass_active)
  pxl_clk_params.flags.SET_DISPCLK_DFS_BYPASS = 1;

 bp->funcs->program_display_engine_pll(bp, &pxl_clk_params);

 if (clk_mgr_dce->dfs_bypass_active) {

  clk_mgr_dce->dfs_bypass_disp_clk =
   pxl_clk_params.dfs_bypass_display_clock;
  actual_clock = pxl_clk_params.dfs_bypass_display_clock;
 }



 if (requested_clk_khz == 0)
  clk_mgr_dce->cur_min_clks_state = DM_PP_CLOCKS_STATE_NOMINAL;

 if (dmcu && dmcu->funcs->is_dmcu_initialized(dmcu))
  dmcu->funcs->set_psr_wait_loop(dmcu, actual_clock / 1000 / 7);

 return actual_clock;
}
