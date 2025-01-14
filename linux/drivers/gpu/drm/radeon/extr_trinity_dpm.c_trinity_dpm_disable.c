
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int boot_ps; } ;
struct TYPE_5__ {TYPE_1__ dpm; int int_thermal_type; } ;
struct TYPE_6__ {int dpm_thermal; scalar_t__ installed; } ;
struct radeon_device {TYPE_2__ pm; TYPE_3__ irq; } ;


 scalar_t__ r600_is_internal_thermal_sensor (int ) ;
 int radeon_irq_set (struct radeon_device*) ;
 int sumo_clear_vc (struct radeon_device*) ;
 int trinity_acquire_mutex (struct radeon_device*) ;
 int trinity_disable_clock_power_gating (struct radeon_device*) ;
 int trinity_dpm_bapm_enable (struct radeon_device*,int) ;
 int trinity_dpm_enabled (struct radeon_device*) ;
 int trinity_release_mutex (struct radeon_device*) ;
 int trinity_reset_am (struct radeon_device*) ;
 int trinity_stop_dpm (struct radeon_device*) ;
 int trinity_update_current_ps (struct radeon_device*,int ) ;
 int trinity_wait_for_level_0 (struct radeon_device*) ;

void trinity_dpm_disable(struct radeon_device *rdev)
{
 trinity_acquire_mutex(rdev);
 if (!trinity_dpm_enabled(rdev)) {
  trinity_release_mutex(rdev);
  return;
 }
 trinity_dpm_bapm_enable(rdev, 0);
 trinity_disable_clock_power_gating(rdev);
 sumo_clear_vc(rdev);
 trinity_wait_for_level_0(rdev);
 trinity_stop_dpm(rdev);
 trinity_reset_am(rdev);
 trinity_release_mutex(rdev);

 if (rdev->irq.installed &&
     r600_is_internal_thermal_sensor(rdev->pm.int_thermal_type)) {
  rdev->irq.dpm_thermal = 0;
  radeon_irq_set(rdev);
 }

 trinity_update_current_ps(rdev, rdev->pm.dpm.boot_ps);
}
