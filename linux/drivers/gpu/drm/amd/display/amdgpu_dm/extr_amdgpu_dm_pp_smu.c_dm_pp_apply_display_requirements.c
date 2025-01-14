
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct smu_context {int dummy; } ;
struct dm_pp_single_disp_config {scalar_t__ pipe_idx; int v_refresh; } ;
struct dm_pp_display_configuration {int display_count; int min_engine_clock_khz; int min_engine_clock_deep_sleep_khz; int min_memory_clock_khz; int min_dcfclock_khz; int disp_clk_khz; struct dm_pp_single_disp_config* disp_configs; int line_time_in_us; int crtc_index; int avail_mclk_switch_time_in_disp_active_us; int avail_mclk_switch_time_us; int all_displays_in_sync; int nb_pstate_switch_disable; int cpu_pstate_separation_time; int cpu_pstate_disable; int cpu_cc6_disable; } ;
struct dc_context {struct amdgpu_device* driver_context; } ;
struct TYPE_12__ {int num_display; int num_path_including_non_display; int min_core_set_clock; int min_core_set_clock_in_sr; int min_mem_set_clock; int min_dcef_deep_sleep_set_clk; int min_dcef_set_clk; int display_clk; int crossfire_display_index; TYPE_1__* displays; scalar_t__ min_bus_bandwidth; int vrefresh; int line_time_in_us; int crtc_index; int dce_tolerable_mclk_in_active_latency; int min_vblank_time; int multi_monitor_in_sync; int nb_pstate_switch_disable; int cpu_pstate_separation_time; int cpu_pstate_disable; int cpu_cc6_disable; } ;
struct TYPE_11__ {TYPE_5__ pm_display_cfg; scalar_t__ dpm_enabled; } ;
struct TYPE_10__ {int pp_handle; TYPE_2__* pp_funcs; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_3__ powerplay; struct smu_context smu; } ;
struct TYPE_9__ {int (* display_configuration_change ) (int ,TYPE_5__*) ;} ;
struct TYPE_8__ {scalar_t__ controller_id; } ;


 int amdgpu_pm_compute_clocks (struct amdgpu_device*) ;
 int memset (TYPE_5__*,int ,int) ;
 int smu_display_configuration_change (struct smu_context*,TYPE_5__*) ;
 int stub1 (int ,TYPE_5__*) ;

bool dm_pp_apply_display_requirements(
  const struct dc_context *ctx,
  const struct dm_pp_display_configuration *pp_display_cfg)
{
 struct amdgpu_device *adev = ctx->driver_context;
 struct smu_context *smu = &adev->smu;
 int i;

 if (adev->pm.dpm_enabled) {

  memset(&adev->pm.pm_display_cfg, 0,
    sizeof(adev->pm.pm_display_cfg));

  adev->pm.pm_display_cfg.cpu_cc6_disable =
   pp_display_cfg->cpu_cc6_disable;

  adev->pm.pm_display_cfg.cpu_pstate_disable =
   pp_display_cfg->cpu_pstate_disable;

  adev->pm.pm_display_cfg.cpu_pstate_separation_time =
   pp_display_cfg->cpu_pstate_separation_time;

  adev->pm.pm_display_cfg.nb_pstate_switch_disable =
   pp_display_cfg->nb_pstate_switch_disable;

  adev->pm.pm_display_cfg.num_display =
    pp_display_cfg->display_count;
  adev->pm.pm_display_cfg.num_path_including_non_display =
    pp_display_cfg->display_count;

  adev->pm.pm_display_cfg.min_core_set_clock =
    pp_display_cfg->min_engine_clock_khz/10;
  adev->pm.pm_display_cfg.min_core_set_clock_in_sr =
    pp_display_cfg->min_engine_clock_deep_sleep_khz/10;
  adev->pm.pm_display_cfg.min_mem_set_clock =
    pp_display_cfg->min_memory_clock_khz/10;

  adev->pm.pm_display_cfg.min_dcef_deep_sleep_set_clk =
    pp_display_cfg->min_engine_clock_deep_sleep_khz/10;
  adev->pm.pm_display_cfg.min_dcef_set_clk =
    pp_display_cfg->min_dcfclock_khz/10;

  adev->pm.pm_display_cfg.multi_monitor_in_sync =
    pp_display_cfg->all_displays_in_sync;
  adev->pm.pm_display_cfg.min_vblank_time =
    pp_display_cfg->avail_mclk_switch_time_us;

  adev->pm.pm_display_cfg.display_clk =
    pp_display_cfg->disp_clk_khz/10;

  adev->pm.pm_display_cfg.dce_tolerable_mclk_in_active_latency =
    pp_display_cfg->avail_mclk_switch_time_in_disp_active_us;

  adev->pm.pm_display_cfg.crtc_index = pp_display_cfg->crtc_index;
  adev->pm.pm_display_cfg.line_time_in_us =
    pp_display_cfg->line_time_in_us;

  adev->pm.pm_display_cfg.vrefresh = pp_display_cfg->disp_configs[0].v_refresh;
  adev->pm.pm_display_cfg.crossfire_display_index = -1;
  adev->pm.pm_display_cfg.min_bus_bandwidth = 0;

  for (i = 0; i < pp_display_cfg->display_count; i++) {
   const struct dm_pp_single_disp_config *dc_cfg =
      &pp_display_cfg->disp_configs[i];
   adev->pm.pm_display_cfg.displays[i].controller_id = dc_cfg->pipe_idx + 1;
  }

  if (adev->powerplay.pp_funcs && adev->powerplay.pp_funcs->display_configuration_change)
   adev->powerplay.pp_funcs->display_configuration_change(
    adev->powerplay.pp_handle,
    &adev->pm.pm_display_cfg);
  else
   smu_display_configuration_change(smu,
        &adev->pm.pm_display_cfg);

  amdgpu_pm_compute_clocks(adev);
 }

 return 1;
}
