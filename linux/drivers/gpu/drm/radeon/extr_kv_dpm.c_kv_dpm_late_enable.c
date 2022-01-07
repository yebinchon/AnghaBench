
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int int_thermal_type; } ;
struct TYPE_3__ {scalar_t__ installed; } ;
struct radeon_device {TYPE_2__ pm; TYPE_1__ irq; } ;


 int DRM_ERROR (char*) ;
 int R600_TEMP_RANGE_MAX ;
 int R600_TEMP_RANGE_MIN ;
 int kv_dpm_powergate_acp (struct radeon_device*,int) ;
 int kv_dpm_powergate_samu (struct radeon_device*,int) ;
 int kv_dpm_powergate_uvd (struct radeon_device*,int) ;
 int kv_dpm_powergate_vce (struct radeon_device*,int) ;
 int kv_enable_thermal_int (struct radeon_device*,int) ;
 int kv_set_thermal_temperature_range (struct radeon_device*,int ,int ) ;
 scalar_t__ r600_is_internal_thermal_sensor (int ) ;

int kv_dpm_late_enable(struct radeon_device *rdev)
{
 int ret = 0;

 if (rdev->irq.installed &&
     r600_is_internal_thermal_sensor(rdev->pm.int_thermal_type)) {
  ret = kv_set_thermal_temperature_range(rdev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
  if (ret) {
   DRM_ERROR("kv_set_thermal_temperature_range failed\n");
   return ret;
  }
  kv_enable_thermal_int(rdev, 1);
 }


 kv_dpm_powergate_acp(rdev, 1);
 kv_dpm_powergate_samu(rdev, 1);
 kv_dpm_powergate_vce(rdev, 1);
 kv_dpm_powergate_uvd(rdev, 1);

 return ret;
}
