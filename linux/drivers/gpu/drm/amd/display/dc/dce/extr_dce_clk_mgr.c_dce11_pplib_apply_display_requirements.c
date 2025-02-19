
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct dm_pp_display_configuration {int nb_pstate_switch_disable; int cpu_cc6_disable; int cpu_pstate_disable; int min_memory_clock_khz; int display_count; int line_time_in_us; TYPE_8__* disp_configs; int crtc_index; int disp_clk_khz; scalar_t__ avail_mclk_switch_time_in_disp_active_us; int avail_mclk_switch_time_us; int min_engine_clock_deep_sleep_khz; int min_engine_clock_khz; int min_dcfclock_khz; int cpu_pstate_separation_time; int all_displays_in_sync; } ;
struct TYPE_10__ {int nbp_state_change_enable; int cpuc_state_change_enable; int cpup_state_change_enable; int yclk_khz; int sclk_deep_sleep_khz; int sclk_khz; int blackout_recovery_time_us; int all_displays_in_sync; } ;
struct TYPE_11__ {TYPE_1__ dce; } ;
struct TYPE_12__ {TYPE_2__ bw; } ;
struct dc_state {int stream_count; TYPE_7__** streams; TYPE_3__ bw_ctx; struct dm_pp_display_configuration pp_display_cfg; } ;
struct dc_crtc_timing {int h_total; int pix_clk_100hz; } ;
struct dc {int ctx; TYPE_9__* current_state; TYPE_6__* res_pool; } ;
struct TYPE_18__ {int pp_display_cfg; } ;
struct TYPE_17__ {int pipe_idx; } ;
struct TYPE_16__ {struct dc_crtc_timing timing; } ;
struct TYPE_15__ {TYPE_5__* clk_mgr; } ;
struct TYPE_13__ {int dispclk_khz; } ;
struct TYPE_14__ {TYPE_4__ clks; } ;


 int MEMORY_TYPE_MULTIPLIER_CZ ;
 int dce110_fill_display_configs (struct dc_state*,struct dm_pp_display_configuration*) ;
 int dce110_get_min_vblank_time_us (struct dc_state*) ;
 int determine_sclk_from_bounding_box (struct dc*,int ) ;
 int dm_pp_apply_display_requirements (int ,struct dm_pp_display_configuration*) ;
 scalar_t__ memcmp (int *,struct dm_pp_display_configuration*,int) ;

__attribute__((used)) static void dce11_pplib_apply_display_requirements(
 struct dc *dc,
 struct dc_state *context)
{
 struct dm_pp_display_configuration *pp_display_cfg = &context->pp_display_cfg;

 pp_display_cfg->all_displays_in_sync =
  context->bw_ctx.bw.dce.all_displays_in_sync;
 pp_display_cfg->nb_pstate_switch_disable =
   context->bw_ctx.bw.dce.nbp_state_change_enable == 0;
 pp_display_cfg->cpu_cc6_disable =
   context->bw_ctx.bw.dce.cpuc_state_change_enable == 0;
 pp_display_cfg->cpu_pstate_disable =
   context->bw_ctx.bw.dce.cpup_state_change_enable == 0;
 pp_display_cfg->cpu_pstate_separation_time =
   context->bw_ctx.bw.dce.blackout_recovery_time_us;

 pp_display_cfg->min_memory_clock_khz = context->bw_ctx.bw.dce.yclk_khz
  / MEMORY_TYPE_MULTIPLIER_CZ;

 pp_display_cfg->min_engine_clock_khz = determine_sclk_from_bounding_box(
   dc,
   context->bw_ctx.bw.dce.sclk_khz);
 pp_display_cfg->min_dcfclock_khz = (context->stream_count > 4)?
   pp_display_cfg->min_engine_clock_khz : 0;

 pp_display_cfg->min_engine_clock_deep_sleep_khz
   = context->bw_ctx.bw.dce.sclk_deep_sleep_khz;

 pp_display_cfg->avail_mclk_switch_time_us =
      dce110_get_min_vblank_time_us(context);

 pp_display_cfg->avail_mclk_switch_time_in_disp_active_us = 0;

 pp_display_cfg->disp_clk_khz = dc->res_pool->clk_mgr->clks.dispclk_khz;

 dce110_fill_display_configs(context, pp_display_cfg);


 if (pp_display_cfg->display_count == 1) {
  const struct dc_crtc_timing *timing =
   &context->streams[0]->timing;

  pp_display_cfg->crtc_index =
   pp_display_cfg->disp_configs[0].pipe_idx;
  pp_display_cfg->line_time_in_us = timing->h_total * 10000 / timing->pix_clk_100hz;
 }

 if (memcmp(&dc->current_state->pp_display_cfg, pp_display_cfg, sizeof(*pp_display_cfg)) != 0)
  dm_pp_apply_display_requirements(dc->ctx, pp_display_cfg);
}
