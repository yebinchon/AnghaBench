
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ac_power; } ;
struct TYPE_8__ {scalar_t__ pm_method; scalar_t__ profile; int mutex; TYPE_3__ dpm; scalar_t__ dpm_enabled; } ;
struct radeon_device {scalar_t__ family; TYPE_4__ pm; TYPE_2__* asic; } ;
struct TYPE_5__ {scalar_t__ enable_bapm; } ;
struct TYPE_6__ {TYPE_1__ dpm; } ;


 scalar_t__ CHIP_ARUBA ;
 scalar_t__ PM_METHOD_DPM ;
 scalar_t__ PM_METHOD_PROFILE ;
 scalar_t__ PM_PROFILE_AUTO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ power_supply_is_system_supplied () ;
 int radeon_dpm_enable_bapm (struct radeon_device*,int) ;
 int radeon_pm_set_clocks (struct radeon_device*) ;
 int radeon_pm_update_profile (struct radeon_device*) ;

void radeon_pm_acpi_event_handler(struct radeon_device *rdev)
{
 if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled) {
  mutex_lock(&rdev->pm.mutex);
  if (power_supply_is_system_supplied() > 0)
   rdev->pm.dpm.ac_power = 1;
  else
   rdev->pm.dpm.ac_power = 0;
  if (rdev->family == CHIP_ARUBA) {
   if (rdev->asic->dpm.enable_bapm)
    radeon_dpm_enable_bapm(rdev, rdev->pm.dpm.ac_power);
  }
  mutex_unlock(&rdev->pm.mutex);
 } else if (rdev->pm.pm_method == PM_METHOD_PROFILE) {
  if (rdev->pm.profile == PM_PROFILE_AUTO) {
   mutex_lock(&rdev->pm.mutex);
   radeon_pm_update_profile(rdev);
   radeon_pm_set_clocks(rdev);
   mutex_unlock(&rdev->pm.mutex);
  }
 }
}
