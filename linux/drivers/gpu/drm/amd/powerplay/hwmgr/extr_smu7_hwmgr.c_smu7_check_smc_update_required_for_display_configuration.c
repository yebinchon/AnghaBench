
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_existing_displays; scalar_t__ vrefresh; scalar_t__ min_clock_in_sr; } ;
struct smu7_hwmgr {TYPE_2__ display_timing; } ;
struct TYPE_4__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_3__* display_config; TYPE_1__ platform_descriptor; scalar_t__ backend; } ;
struct TYPE_6__ {scalar_t__ num_display; scalar_t__ vrefresh; scalar_t__ min_core_set_clock_in_sr; } ;


 int PHM_PlatformCaps_SclkDeepSleep ;
 scalar_t__ SMU7_MINIMUM_ENGINE_CLOCK ;
 scalar_t__ phm_cap_enabled (int ,int ) ;

__attribute__((used)) static bool
smu7_check_smc_update_required_for_display_configuration(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 bool is_update_required = 0;

 if (data->display_timing.num_existing_displays != hwmgr->display_config->num_display)
  is_update_required = 1;

 if (data->display_timing.vrefresh != hwmgr->display_config->vrefresh)
  is_update_required = 1;

 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_SclkDeepSleep)) {
  if (data->display_timing.min_clock_in_sr != hwmgr->display_config->min_core_set_clock_in_sr &&
   (data->display_timing.min_clock_in_sr >= SMU7_MINIMUM_ENGINE_CLOCK ||
   hwmgr->display_config->min_core_set_clock_in_sr >= SMU7_MINIMUM_ENGINE_CLOCK))
   is_update_required = 1;
 }
 return is_update_required;
}
