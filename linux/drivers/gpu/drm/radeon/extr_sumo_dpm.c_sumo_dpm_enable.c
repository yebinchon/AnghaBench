
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sumo_power_info {scalar_t__ enable_boost; scalar_t__ enable_sclk_ds; scalar_t__ enable_auto_thermal_throttling; } ;
struct TYPE_3__ {int boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int EINVAL ;
 int SUMO_VRC_DFLT ;
 scalar_t__ sumo_dpm_enabled (struct radeon_device*) ;
 int sumo_enable_boost_timer (struct radeon_device*) ;
 int sumo_enable_sclk_ds (struct radeon_device*,int) ;
 int sumo_enable_voltage_scaling (struct radeon_device*,int) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 int sumo_init_bsp (struct radeon_device*) ;
 int sumo_override_cnb_thermal_events (struct radeon_device*) ;
 int sumo_program_bootup_at (struct radeon_device*) ;
 int sumo_program_bootup_state (struct radeon_device*) ;
 int sumo_program_dc_hto (struct radeon_device*) ;
 int sumo_program_power_level_enter_state (struct radeon_device*) ;
 int sumo_program_sstp (struct radeon_device*) ;
 int sumo_program_tp (struct radeon_device*) ;
 int sumo_program_ttp (struct radeon_device*) ;
 int sumo_program_ttt (struct radeon_device*) ;
 int sumo_program_vc (struct radeon_device*,int ) ;
 int sumo_reset_am (struct radeon_device*) ;
 int sumo_start_am (struct radeon_device*) ;
 int sumo_start_dpm (struct radeon_device*) ;
 int sumo_update_current_ps (struct radeon_device*,int ) ;
 int sumo_wait_for_level_0 (struct radeon_device*) ;

int sumo_dpm_enable(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);

 if (sumo_dpm_enabled(rdev))
  return -EINVAL;

 sumo_program_bootup_state(rdev);
 sumo_init_bsp(rdev);
 sumo_reset_am(rdev);
 sumo_program_tp(rdev);
 sumo_program_bootup_at(rdev);
 sumo_start_am(rdev);
 if (pi->enable_auto_thermal_throttling) {
  sumo_program_ttp(rdev);
  sumo_program_ttt(rdev);
 }
 sumo_program_dc_hto(rdev);
 sumo_program_power_level_enter_state(rdev);
 sumo_enable_voltage_scaling(rdev, 1);
 sumo_program_sstp(rdev);
 sumo_program_vc(rdev, SUMO_VRC_DFLT);
 sumo_override_cnb_thermal_events(rdev);
 sumo_start_dpm(rdev);
 sumo_wait_for_level_0(rdev);
 if (pi->enable_sclk_ds)
  sumo_enable_sclk_ds(rdev, 1);
 if (pi->enable_boost)
  sumo_enable_boost_timer(rdev);

 sumo_update_current_ps(rdev, rdev->pm.dpm.boot_ps);

 return 0;
}
