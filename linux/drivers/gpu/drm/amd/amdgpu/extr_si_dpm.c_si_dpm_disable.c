
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rv7xx_power_info {scalar_t__ thermal_protection; } ;
struct amdgpu_ps {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;


 int AMDGPU_DPM_AUTO_THROTTLE_SRC_THERMAL ;
 int amdgpu_si_is_smc_running (struct amdgpu_device*) ;
 int ni_update_current_ps (struct amdgpu_device*,struct amdgpu_ps*) ;
 struct rv7xx_power_info* rv770_get_pi (struct amdgpu_device*) ;
 int si_clear_vc (struct amdgpu_device*) ;
 int si_disable_ulv (struct amdgpu_device*) ;
 int si_dpm_stop_smc (struct amdgpu_device*) ;
 int si_enable_auto_throttle_source (struct amdgpu_device*,int ,int) ;
 int si_enable_power_containment (struct amdgpu_device*,struct amdgpu_ps*,int) ;
 int si_enable_smc_cac (struct amdgpu_device*,struct amdgpu_ps*,int) ;
 int si_enable_spread_spectrum (struct amdgpu_device*,int) ;
 int si_enable_thermal_protection (struct amdgpu_device*,int) ;
 int si_force_switch_to_arb_f0 (struct amdgpu_device*) ;
 int si_reset_to_default (struct amdgpu_device*) ;
 int si_stop_dpm (struct amdgpu_device*) ;
 int si_thermal_stop_thermal_controller (struct amdgpu_device*) ;

__attribute__((used)) static void si_dpm_disable(struct amdgpu_device *adev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(adev);
 struct amdgpu_ps *boot_ps = adev->pm.dpm.boot_ps;

 if (!amdgpu_si_is_smc_running(adev))
  return;
 si_thermal_stop_thermal_controller(adev);
 si_disable_ulv(adev);
 si_clear_vc(adev);
 if (pi->thermal_protection)
  si_enable_thermal_protection(adev, 0);
 si_enable_power_containment(adev, boot_ps, 0);
 si_enable_smc_cac(adev, boot_ps, 0);
 si_enable_spread_spectrum(adev, 0);
 si_enable_auto_throttle_source(adev, AMDGPU_DPM_AUTO_THROTTLE_SRC_THERMAL, 0);
 si_stop_dpm(adev);
 si_reset_to_default(adev);
 si_dpm_stop_smc(adev);
 si_force_switch_to_arb_f0(adev);

 ni_update_current_ps(adev, boot_ps);
}
