
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_2__* hwmgr_func; TYPE_1__ platform_descriptor; struct amdgpu_device* adev; } ;
struct TYPE_8__ {int max_mem_emergency_temp; int max_mem_crit_temp; int min_mem_temp; int max_hotspot_emergency_temp; int max_hotspot_crit_temp; int min_hotspot_temp; int max_edge_emergency_temp; int max_temp; int min_temp; } ;
struct TYPE_9__ {TYPE_3__ thermal; } ;
struct TYPE_10__ {TYPE_4__ dpm; } ;
struct amdgpu_device {TYPE_5__ pm; } ;
struct PP_TemperatureRange {int mem_emergency_max; int mem_crit_max; int mem_min; int hotspot_emergency_max; int hotspot_crit_max; int hotspot_min; int edge_emergency_max; int max; int min; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_7__ {int (* start_thermal_controller ) (struct pp_hwmgr*,struct PP_TemperatureRange*) ;int (* get_thermal_temperature_range ) (struct pp_hwmgr*,struct PP_TemperatureRange*) ;} ;


 int PHM_PlatformCaps_ThermalController ;
 int TEMP_RANGE_MAX ;
 int TEMP_RANGE_MIN ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int stub1 (struct pp_hwmgr*,struct PP_TemperatureRange*) ;
 int stub2 (struct pp_hwmgr*,struct PP_TemperatureRange*) ;

int phm_start_thermal_controller(struct pp_hwmgr *hwmgr)
{
 int ret = 0;
 struct PP_TemperatureRange range = {
  TEMP_RANGE_MIN,
  TEMP_RANGE_MAX,
  TEMP_RANGE_MAX,
  TEMP_RANGE_MIN,
  TEMP_RANGE_MAX,
  TEMP_RANGE_MAX,
  TEMP_RANGE_MIN,
  TEMP_RANGE_MAX,
  TEMP_RANGE_MAX};
 struct amdgpu_device *adev = hwmgr->adev;

 if (hwmgr->hwmgr_func->get_thermal_temperature_range)
  hwmgr->hwmgr_func->get_thermal_temperature_range(
    hwmgr, &range);

 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_ThermalController)
   && hwmgr->hwmgr_func->start_thermal_controller != ((void*)0))
  ret = hwmgr->hwmgr_func->start_thermal_controller(hwmgr, &range);

 adev->pm.dpm.thermal.min_temp = range.min;
 adev->pm.dpm.thermal.max_temp = range.max;
 adev->pm.dpm.thermal.max_edge_emergency_temp = range.edge_emergency_max;
 adev->pm.dpm.thermal.min_hotspot_temp = range.hotspot_min;
 adev->pm.dpm.thermal.max_hotspot_crit_temp = range.hotspot_crit_max;
 adev->pm.dpm.thermal.max_hotspot_emergency_temp = range.hotspot_emergency_max;
 adev->pm.dpm.thermal.min_mem_temp = range.mem_min;
 adev->pm.dpm.thermal.max_mem_crit_temp = range.mem_crit_max;
 adev->pm.dpm.thermal.max_mem_emergency_temp = range.mem_emergency_max;

 return ret;
}
