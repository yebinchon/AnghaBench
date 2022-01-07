
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_TEMP_RANGE_MAX ;
 int R600_TEMP_RANGE_MIN ;
 int ci_thermal_enable_alert (struct radeon_device*,int) ;
 int ci_thermal_set_temperature_range (struct radeon_device*,int ,int ) ;

__attribute__((used)) static int ci_set_temperature_range(struct radeon_device *rdev)
{
 int ret;

 ret = ci_thermal_enable_alert(rdev, 0);
 if (ret)
  return ret;
 ret = ci_thermal_set_temperature_range(rdev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
 if (ret)
  return ret;
 ret = ci_thermal_enable_alert(rdev, 1);
 if (ret)
  return ret;

 return ret;
}
