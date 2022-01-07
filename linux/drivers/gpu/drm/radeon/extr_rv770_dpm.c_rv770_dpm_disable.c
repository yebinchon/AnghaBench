
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; } ;
struct TYPE_4__ {int dpm_thermal; scalar_t__ installed; } ;
struct TYPE_3__ {int int_thermal_type; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ irq; TYPE_1__ pm; } ;


 scalar_t__ CHIP_RV710 ;
 scalar_t__ CHIP_RV730 ;
 scalar_t__ r600_is_internal_thermal_sensor (int ) ;
 int r7xx_stop_smc (struct radeon_device*) ;
 int radeon_irq_set (struct radeon_device*) ;
 int rv730_stop_dpm (struct radeon_device*) ;
 int rv770_clear_vc (struct radeon_device*) ;
 int rv770_dpm_enabled (struct radeon_device*) ;
 int rv770_enable_dynamic_pcie_gen2 (struct radeon_device*,int) ;
 int rv770_enable_spread_spectrum (struct radeon_device*,int) ;
 int rv770_enable_thermal_protection (struct radeon_device*,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int rv770_gfx_clock_gating_enable (struct radeon_device*,int) ;
 int rv770_mg_clock_gating_enable (struct radeon_device*,int) ;
 int rv770_reset_smio_status (struct radeon_device*) ;
 int rv770_stop_dpm (struct radeon_device*) ;

void rv770_dpm_disable(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 if (!rv770_dpm_enabled(rdev))
  return;

 rv770_clear_vc(rdev);

 if (pi->thermal_protection)
  rv770_enable_thermal_protection(rdev, 0);

 rv770_enable_spread_spectrum(rdev, 0);

 if (pi->dynamic_pcie_gen2)
  rv770_enable_dynamic_pcie_gen2(rdev, 0);

 if (rdev->irq.installed &&
     r600_is_internal_thermal_sensor(rdev->pm.int_thermal_type)) {
  rdev->irq.dpm_thermal = 0;
  radeon_irq_set(rdev);
 }

 if (pi->gfx_clock_gating)
  rv770_gfx_clock_gating_enable(rdev, 0);

 if (pi->mg_clock_gating)
  rv770_mg_clock_gating_enable(rdev, 0);

 if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
  rv730_stop_dpm(rdev);
 else
  rv770_stop_dpm(rdev);

 r7xx_stop_smc(rdev);
 rv770_reset_smio_status(rdev);
}
