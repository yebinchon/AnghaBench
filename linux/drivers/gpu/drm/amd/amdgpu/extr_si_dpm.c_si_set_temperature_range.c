
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int R600_TEMP_RANGE_MAX ;
 int R600_TEMP_RANGE_MIN ;
 int si_thermal_enable_alert (struct amdgpu_device*,int) ;
 int si_thermal_set_temperature_range (struct amdgpu_device*,int ,int ) ;

__attribute__((used)) static int si_set_temperature_range(struct amdgpu_device *adev)
{
 int ret;

 ret = si_thermal_enable_alert(adev, 0);
 if (ret)
  return ret;
 ret = si_thermal_set_temperature_range(adev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
 if (ret)
  return ret;
 ret = si_thermal_enable_alert(adev, 1);
 if (ret)
  return ret;

 return ret;
}
