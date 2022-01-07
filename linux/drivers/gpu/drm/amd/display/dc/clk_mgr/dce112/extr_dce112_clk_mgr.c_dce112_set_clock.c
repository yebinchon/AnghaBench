
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct dmcu {TYPE_7__* funcs; } ;
struct dc_bios {TYPE_5__* funcs; } ;
struct dc {TYPE_6__* ctx; TYPE_1__* res_pool; } ;
struct clk_mgr_internal {int dentist_vco_freq_khz; int dfs_bypass_disp_clk; int cur_min_clks_state; } ;
struct clk_mgr {TYPE_3__* ctx; } ;
struct TYPE_11__ {int USE_GENLOCK_AS_SOURCE_FOR_DPREFCLK; } ;
struct bp_set_dce_clock_parameters {int target_clock_frequency; scalar_t__ pll_id; TYPE_4__ flags; int clock_type; } ;
typedef int dce_clk_params ;
struct TYPE_14__ {int (* set_psr_wait_loop ) (struct dmcu*,int) ;scalar_t__ (* is_dmcu_initialized ) (struct dmcu*) ;} ;
struct TYPE_13__ {int dce_environment; } ;
struct TYPE_12__ {int (* set_dce_clock ) (struct dc_bios*,struct bp_set_dce_clock_parameters*) ;} ;
struct TYPE_9__ {int hw_internal_rev; } ;
struct TYPE_10__ {TYPE_2__ asic_id; struct dc* dc; struct dc_bios* dc_bios; } ;
struct TYPE_8__ {struct dmcu* dmcu; } ;


 int ASICREV_IS_VEGA20_P (int ) ;
 scalar_t__ CLOCK_SOURCE_COMBO_DISPLAY_PLL0 ;
 scalar_t__ CLOCK_SOURCE_ID_DFS ;
 int DCECLOCK_TYPE_DISPLAY_CLOCK ;
 int DCECLOCK_TYPE_DPREFCLK ;
 int DM_PP_CLOCKS_STATE_NOMINAL ;
 int IS_FPGA_MAXIMUS_DC (int ) ;
 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;
 int max (int,int) ;
 int memset (struct bp_set_dce_clock_parameters*,int ,int) ;
 int stub1 (struct dc_bios*,struct bp_set_dce_clock_parameters*) ;
 int stub2 (struct dc_bios*,struct bp_set_dce_clock_parameters*) ;
 scalar_t__ stub3 (struct dmcu*) ;
 int stub4 (struct dmcu*,int) ;

int dce112_set_clock(struct clk_mgr *clk_mgr_base, int requested_clk_khz)
{
 struct clk_mgr_internal *clk_mgr_dce = TO_CLK_MGR_INTERNAL(clk_mgr_base);
 struct bp_set_dce_clock_parameters dce_clk_params;
 struct dc_bios *bp = clk_mgr_base->ctx->dc_bios;
 struct dc *core_dc = clk_mgr_base->ctx->dc;
 struct dmcu *dmcu = core_dc->res_pool->dmcu;
 int actual_clock = requested_clk_khz;

 memset(&dce_clk_params, 0, sizeof(dce_clk_params));


 if (requested_clk_khz > 0)
  requested_clk_khz = max(requested_clk_khz,
    clk_mgr_dce->dentist_vco_freq_khz / 62);

 dce_clk_params.target_clock_frequency = requested_clk_khz;
 dce_clk_params.pll_id = CLOCK_SOURCE_ID_DFS;
 dce_clk_params.clock_type = DCECLOCK_TYPE_DISPLAY_CLOCK;

 bp->funcs->set_dce_clock(bp, &dce_clk_params);
 actual_clock = dce_clk_params.target_clock_frequency;





 if (requested_clk_khz == 0)
  clk_mgr_dce->cur_min_clks_state = DM_PP_CLOCKS_STATE_NOMINAL;



 dce_clk_params.target_clock_frequency = 0;
 dce_clk_params.clock_type = DCECLOCK_TYPE_DPREFCLK;
 if (!ASICREV_IS_VEGA20_P(clk_mgr_base->ctx->asic_id.hw_internal_rev))
  dce_clk_params.flags.USE_GENLOCK_AS_SOURCE_FOR_DPREFCLK =
   (dce_clk_params.pll_id ==
     CLOCK_SOURCE_COMBO_DISPLAY_PLL0);
 else
  dce_clk_params.flags.USE_GENLOCK_AS_SOURCE_FOR_DPREFCLK = 0;

 bp->funcs->set_dce_clock(bp, &dce_clk_params);

 if (!IS_FPGA_MAXIMUS_DC(core_dc->ctx->dce_environment)) {
  if (dmcu && dmcu->funcs->is_dmcu_initialized(dmcu)) {
   if (clk_mgr_dce->dfs_bypass_disp_clk != actual_clock)
    dmcu->funcs->set_psr_wait_loop(dmcu,
      actual_clock / 1000 / 7);
  }
 }

 clk_mgr_dce->dfs_bypass_disp_clk = actual_clock;
 return actual_clock;
}
