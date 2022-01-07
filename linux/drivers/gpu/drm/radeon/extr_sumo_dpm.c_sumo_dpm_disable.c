
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sumo_power_info {scalar_t__ enable_sclk_ds; } ;
struct TYPE_4__ {int boot_ps; } ;
struct TYPE_6__ {TYPE_1__ dpm; int int_thermal_type; } ;
struct TYPE_5__ {int dpm_thermal; scalar_t__ installed; } ;
struct radeon_device {TYPE_3__ pm; TYPE_2__ irq; } ;


 scalar_t__ r600_is_internal_thermal_sensor (int ) ;
 int radeon_irq_set (struct radeon_device*) ;
 int sumo_clear_vc (struct radeon_device*) ;
 int sumo_disable_clock_power_gating (struct radeon_device*) ;
 int sumo_dpm_enabled (struct radeon_device*) ;
 int sumo_enable_sclk_ds (struct radeon_device*,int) ;
 int sumo_enable_voltage_scaling (struct radeon_device*,int) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 int sumo_stop_dpm (struct radeon_device*) ;
 int sumo_update_current_ps (struct radeon_device*,int ) ;
 int sumo_wait_for_level_0 (struct radeon_device*) ;

void sumo_dpm_disable(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);

 if (!sumo_dpm_enabled(rdev))
  return;
 sumo_disable_clock_power_gating(rdev);
 if (pi->enable_sclk_ds)
  sumo_enable_sclk_ds(rdev, 0);
 sumo_clear_vc(rdev);
 sumo_wait_for_level_0(rdev);
 sumo_stop_dpm(rdev);
 sumo_enable_voltage_scaling(rdev, 0);

 if (rdev->irq.installed &&
     r600_is_internal_thermal_sensor(rdev->pm.int_thermal_type)) {
  rdev->irq.dpm_thermal = 0;
  radeon_irq_set(rdev);
 }

 sumo_update_current_ps(rdev, rdev->pm.dpm.boot_ps);
}
