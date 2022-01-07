
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dpm_thermal; scalar_t__ installed; } ;
struct TYPE_3__ {int int_thermal_type; } ;
struct radeon_device {TYPE_2__ irq; TYPE_1__ pm; } ;
typedef scalar_t__ PPSMC_Result ;


 int DRM_DEBUG_KMS (char*) ;
 int PPSMC_MSG_EnableThermalInterrupt ;
 scalar_t__ PPSMC_Result_OK ;
 int R600_TEMP_RANGE_MAX ;
 int R600_TEMP_RANGE_MIN ;
 scalar_t__ r600_is_internal_thermal_sensor (int ) ;
 int radeon_irq_set (struct radeon_device*) ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;
 int rv770_set_thermal_temperature_range (struct radeon_device*,int ,int ) ;

int rv770_dpm_late_enable(struct radeon_device *rdev)
{
 int ret;

 if (rdev->irq.installed &&
     r600_is_internal_thermal_sensor(rdev->pm.int_thermal_type)) {
  PPSMC_Result result;

  ret = rv770_set_thermal_temperature_range(rdev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
  if (ret)
   return ret;
  rdev->irq.dpm_thermal = 1;
  radeon_irq_set(rdev);
  result = rv770_send_msg_to_smc(rdev, PPSMC_MSG_EnableThermalInterrupt);

  if (result != PPSMC_Result_OK)
   DRM_DEBUG_KMS("Could not enable thermal interrupts.\n");
 }

 return 0;
}
