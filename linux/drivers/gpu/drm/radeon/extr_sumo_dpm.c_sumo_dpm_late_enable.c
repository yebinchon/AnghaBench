
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dpm_thermal; scalar_t__ installed; } ;
struct TYPE_3__ {int int_thermal_type; } ;
struct radeon_device {TYPE_2__ irq; TYPE_1__ pm; } ;


 int R600_TEMP_RANGE_MAX ;
 int R600_TEMP_RANGE_MIN ;
 scalar_t__ r600_is_internal_thermal_sensor (int ) ;
 int radeon_irq_set (struct radeon_device*) ;
 int sumo_enable_clock_power_gating (struct radeon_device*) ;
 int sumo_set_thermal_temperature_range (struct radeon_device*,int ,int ) ;

int sumo_dpm_late_enable(struct radeon_device *rdev)
{
 int ret;

 ret = sumo_enable_clock_power_gating(rdev);
 if (ret)
  return ret;

 if (rdev->irq.installed &&
     r600_is_internal_thermal_sensor(rdev->pm.int_thermal_type)) {
  ret = sumo_set_thermal_temperature_range(rdev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
  if (ret)
   return ret;
  rdev->irq.dpm_thermal = 1;
  radeon_irq_set(rdev);
 }

 return 0;
}
