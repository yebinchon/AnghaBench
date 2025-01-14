
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rv7xx_power_info {scalar_t__ thermal_protection; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ;
 int ni_update_current_ps (struct radeon_device*,struct radeon_ps*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int si_clear_vc (struct radeon_device*) ;
 int si_disable_ulv (struct radeon_device*) ;
 int si_dpm_stop_smc (struct radeon_device*) ;
 int si_enable_auto_throttle_source (struct radeon_device*,int ,int) ;
 int si_enable_power_containment (struct radeon_device*,struct radeon_ps*,int) ;
 int si_enable_smc_cac (struct radeon_device*,struct radeon_ps*,int) ;
 int si_enable_spread_spectrum (struct radeon_device*,int) ;
 int si_enable_thermal_protection (struct radeon_device*,int) ;
 int si_force_switch_to_arb_f0 (struct radeon_device*) ;
 int si_is_smc_running (struct radeon_device*) ;
 int si_reset_to_default (struct radeon_device*) ;
 int si_stop_dpm (struct radeon_device*) ;
 int si_thermal_stop_thermal_controller (struct radeon_device*) ;

void si_dpm_disable(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;

 if (!si_is_smc_running(rdev))
  return;
 si_thermal_stop_thermal_controller(rdev);
 si_disable_ulv(rdev);
 si_clear_vc(rdev);
 if (pi->thermal_protection)
  si_enable_thermal_protection(rdev, 0);
 si_enable_power_containment(rdev, boot_ps, 0);
 si_enable_smc_cac(rdev, boot_ps, 0);
 si_enable_spread_spectrum(rdev, 0);
 si_enable_auto_throttle_source(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, 0);
 si_stop_dpm(rdev);
 si_reset_to_default(rdev);
 si_dpm_stop_smc(rdev);
 si_force_switch_to_arb_f0(rdev);

 ni_update_current_ps(rdev, boot_ps);
}
