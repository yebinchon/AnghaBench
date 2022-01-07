
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ac_power; int mutex; scalar_t__ dpm_enabled; } ;
struct TYPE_5__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_3__ pm; TYPE_2__ powerplay; } ;
struct TYPE_4__ {scalar_t__ enable_bapm; } ;


 int amdgpu_dpm_enable_bapm (struct amdgpu_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ power_supply_is_system_supplied () ;

void amdgpu_pm_acpi_event_handler(struct amdgpu_device *adev)
{
 if (adev->pm.dpm_enabled) {
  mutex_lock(&adev->pm.mutex);
  if (power_supply_is_system_supplied() > 0)
   adev->pm.ac_power = 1;
  else
   adev->pm.ac_power = 0;
  if (adev->powerplay.pp_funcs->enable_bapm)
   amdgpu_dpm_enable_bapm(adev, adev->pm.ac_power);
  mutex_unlock(&adev->pm.mutex);
 }
}
