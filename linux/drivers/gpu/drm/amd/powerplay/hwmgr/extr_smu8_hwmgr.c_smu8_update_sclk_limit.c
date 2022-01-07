
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {unsigned long soft_min_clk; unsigned long soft_max_clk; unsigned long hard_min_clk; } ;
struct smu8_hwmgr {TYPE_6__ sclk_dpm; } ;
struct TYPE_11__ {int platformCaps; } ;
struct TYPE_9__ {unsigned long mclk; } ;
struct TYPE_10__ {TYPE_3__ max_clock_voltage_on_ac; struct phm_clock_voltage_dependency_table* vddc_dependency_on_sclk; } ;
struct pp_hwmgr {TYPE_5__ platform_descriptor; TYPE_4__ dyn_state; TYPE_2__* display_config; struct smu8_hwmgr* backend; } ;
struct phm_clock_voltage_dependency_table {unsigned long count; TYPE_1__* entries; } ;
struct TYPE_8__ {unsigned long min_core_set_clock; } ;
struct TYPE_7__ {unsigned long clk; } ;


 int PHM_PlatformCaps_StablePState ;
 int PPSMC_MSG_SetSclkHardMin ;
 int PPSMC_MSG_SetSclkSoftMax ;
 int PPSMC_MSG_SetSclkSoftMin ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int pr_debug (char*) ;
 int smu8_get_max_sclk_level (struct pp_hwmgr*) ;
 int smu8_get_sclk_level (struct pp_hwmgr*,unsigned long,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_update_sclk_limit(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data = hwmgr->backend;
 struct phm_clock_voltage_dependency_table *table =
     hwmgr->dyn_state.vddc_dependency_on_sclk;

 unsigned long clock = 0;
 unsigned long level;
 unsigned long stable_pstate_sclk;
 unsigned long percentage;

 data->sclk_dpm.soft_min_clk = table->entries[0].clk;
 level = smu8_get_max_sclk_level(hwmgr) - 1;

 if (level < table->count)
  data->sclk_dpm.soft_max_clk = table->entries[level].clk;
 else
  data->sclk_dpm.soft_max_clk = table->entries[table->count - 1].clk;

 clock = hwmgr->display_config->min_core_set_clock;
 if (clock == 0)
  pr_debug("min_core_set_clock not set\n");

 if (data->sclk_dpm.hard_min_clk != clock) {
  data->sclk_dpm.hard_min_clk = clock;

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSclkHardMin,
       smu8_get_sclk_level(hwmgr,
     data->sclk_dpm.hard_min_clk,
          PPSMC_MSG_SetSclkHardMin));
 }

 clock = data->sclk_dpm.soft_min_clk;


 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
         PHM_PlatformCaps_StablePState)) {
  percentage = 75;

  stable_pstate_sclk = (hwmgr->dyn_state.max_clock_voltage_on_ac.mclk *
     percentage) / 100;

  if (clock < stable_pstate_sclk)
   clock = stable_pstate_sclk;
 }

 if (data->sclk_dpm.soft_min_clk != clock) {
  data->sclk_dpm.soft_min_clk = clock;
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSclkSoftMin,
      smu8_get_sclk_level(hwmgr,
     data->sclk_dpm.soft_min_clk,
          PPSMC_MSG_SetSclkSoftMin));
 }

 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
        PHM_PlatformCaps_StablePState) &&
    data->sclk_dpm.soft_max_clk != clock) {
  data->sclk_dpm.soft_max_clk = clock;
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSclkSoftMax,
      smu8_get_sclk_level(hwmgr,
     data->sclk_dpm.soft_max_clk,
     PPSMC_MSG_SetSclkSoftMax));
 }

 return 0;
}
