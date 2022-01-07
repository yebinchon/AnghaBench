
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_existing_displays; scalar_t__ min_clock_in_sr; } ;
struct vega10_hwmgr {TYPE_1__ display_timing; } ;
struct pp_hwmgr {TYPE_2__* display_config; struct vega10_hwmgr* backend; } ;
struct TYPE_4__ {scalar_t__ num_display; scalar_t__ min_core_set_clock_in_sr; } ;


 int PHM_PlatformCaps_SclkDeepSleep ;
 scalar_t__ PP_CAP (int ) ;

__attribute__((used)) static bool
vega10_check_smc_update_required_for_display_configuration(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 bool is_update_required = 0;

 if (data->display_timing.num_existing_displays != hwmgr->display_config->num_display)
  is_update_required = 1;

 if (PP_CAP(PHM_PlatformCaps_SclkDeepSleep)) {
  if (data->display_timing.min_clock_in_sr != hwmgr->display_config->min_core_set_clock_in_sr)
   is_update_required = 1;
 }

 return is_update_required;
}
