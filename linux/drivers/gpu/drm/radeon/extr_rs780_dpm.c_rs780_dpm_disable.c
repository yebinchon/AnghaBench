
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dpm_thermal; scalar_t__ installed; } ;
struct TYPE_3__ {scalar_t__ int_thermal_type; } ;
struct radeon_device {TYPE_2__ irq; TYPE_1__ pm; } ;
struct igp_power_info {scalar_t__ gfx_clock_gating; } ;


 scalar_t__ THERMAL_TYPE_RV6XX ;
 int r600_dynamicpm_enable (struct radeon_device*,int) ;
 int r600_gfx_clockgating_enable (struct radeon_device*,int) ;
 int radeon_irq_set (struct radeon_device*) ;
 int rs780_clk_scaling_enable (struct radeon_device*,int) ;
 struct igp_power_info* rs780_get_pi (struct radeon_device*) ;
 int rs780_voltage_scaling_enable (struct radeon_device*,int) ;

void rs780_dpm_disable(struct radeon_device *rdev)
{
 struct igp_power_info *pi = rs780_get_pi(rdev);

 r600_dynamicpm_enable(rdev, 0);

 rs780_clk_scaling_enable(rdev, 0);
 rs780_voltage_scaling_enable(rdev, 0);

 if (pi->gfx_clock_gating)
  r600_gfx_clockgating_enable(rdev, 0);

 if (rdev->irq.installed &&
     (rdev->pm.int_thermal_type == THERMAL_TYPE_RV6XX)) {
  rdev->irq.dpm_thermal = 0;
  radeon_irq_set(rdev);
 }
}
