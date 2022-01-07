
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; } ;
struct TYPE_5__ {int boot_ps; } ;
struct TYPE_6__ {TYPE_2__ dpm; int int_thermal_type; } ;
struct TYPE_4__ {int dpm_thermal; scalar_t__ installed; } ;
struct radeon_device {TYPE_3__ pm; TYPE_1__ irq; } ;
struct evergreen_power_info {scalar_t__ ls_clock_gating; } ;


 int btc_cg_clock_gating_enable (struct radeon_device*,int) ;
 int btc_dpm_enabled (struct radeon_device*) ;
 int btc_enable_dynamic_pcie_gen2 (struct radeon_device*,int) ;
 int btc_ls_clock_gating_enable (struct radeon_device*,int) ;
 int btc_mg_clock_gating_enable (struct radeon_device*,int) ;
 int btc_reset_to_default (struct radeon_device*) ;
 int btc_stop_smc (struct radeon_device*) ;
 int btc_update_current_ps (struct radeon_device*,int ) ;
 int cypress_enable_spread_spectrum (struct radeon_device*,int) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 scalar_t__ r600_is_internal_thermal_sensor (int ) ;
 int radeon_irq_set (struct radeon_device*) ;
 int rv770_clear_vc (struct radeon_device*) ;
 int rv770_enable_thermal_protection (struct radeon_device*,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int rv770_stop_dpm (struct radeon_device*) ;

void btc_dpm_disable(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 if (!btc_dpm_enabled(rdev))
  return;

 rv770_clear_vc(rdev);

 if (pi->thermal_protection)
  rv770_enable_thermal_protection(rdev, 0);

 if (pi->dynamic_pcie_gen2)
  btc_enable_dynamic_pcie_gen2(rdev, 0);

 if (rdev->irq.installed &&
     r600_is_internal_thermal_sensor(rdev->pm.int_thermal_type)) {
  rdev->irq.dpm_thermal = 0;
  radeon_irq_set(rdev);
 }

 if (pi->gfx_clock_gating)
  btc_cg_clock_gating_enable(rdev, 0);

 if (pi->mg_clock_gating)
  btc_mg_clock_gating_enable(rdev, 0);

 if (eg_pi->ls_clock_gating)
  btc_ls_clock_gating_enable(rdev, 0);

 rv770_stop_dpm(rdev);
 btc_reset_to_default(rdev);
 btc_stop_smc(rdev);
 cypress_enable_spread_spectrum(rdev, 0);

 btc_update_current_ps(rdev, rdev->pm.dpm.boot_ps);
}
