
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct smu_temperature_range {int mem_emergency_max; int mem_crit_max; int mem_min; int hotspot_emergency_max; int hotspot_crit_max; int hotspot_min; int edge_emergency_max; int max; int min; } ;
struct TYPE_5__ {scalar_t__ thermal_controller_type; } ;
struct smu_context {TYPE_1__ smu_table; int pm_enabled; struct amdgpu_device* adev; } ;
struct TYPE_6__ {int max_mem_emergency_temp; int max_mem_crit_temp; int min_mem_temp; int max_hotspot_emergency_temp; int max_hotspot_crit_temp; int min_hotspot_temp; int max_edge_emergency_temp; int max_temp; int min_temp; } ;
struct TYPE_7__ {TYPE_2__ thermal; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct amdgpu_device {TYPE_4__ pm; } ;


 int memcpy (struct smu_temperature_range*,int *,int) ;
 int * smu11_thermal_policy ;
 int smu_get_thermal_temperature_range (struct smu_context*,struct smu_temperature_range*) ;
 int smu_set_thermal_fan_table (struct smu_context*) ;
 int smu_v11_0_enable_thermal_alert (struct smu_context*) ;
 int smu_v11_0_set_thermal_range (struct smu_context*,struct smu_temperature_range) ;

__attribute__((used)) static int smu_v11_0_start_thermal_control(struct smu_context *smu)
{
 int ret = 0;
 struct smu_temperature_range range;
 struct amdgpu_device *adev = smu->adev;

 if (!smu->pm_enabled)
  return ret;

 memcpy(&range, &smu11_thermal_policy[0], sizeof(struct smu_temperature_range));

 ret = smu_get_thermal_temperature_range(smu, &range);
 if (ret)
  return ret;

 if (smu->smu_table.thermal_controller_type) {
  ret = smu_v11_0_set_thermal_range(smu, range);
  if (ret)
   return ret;

  ret = smu_v11_0_enable_thermal_alert(smu);
  if (ret)
   return ret;

  ret = smu_set_thermal_fan_table(smu);
  if (ret)
   return ret;
 }

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
