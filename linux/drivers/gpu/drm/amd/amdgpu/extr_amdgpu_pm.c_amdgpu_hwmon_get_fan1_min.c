
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef int ssize_t ;
typedef int min_rpm ;


 int AMDGPU_PP_SENSOR_MIN_FAN_RPM ;
 int PAGE_SIZE ;
 int amdgpu_dpm_read_sensor (struct amdgpu_device*,int ,void*,int*) ;
 struct amdgpu_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t amdgpu_hwmon_get_fan1_min(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct amdgpu_device *adev = dev_get_drvdata(dev);
 u32 min_rpm = 0;
 u32 size = sizeof(min_rpm);
 int r;

 r = amdgpu_dpm_read_sensor(adev, AMDGPU_PP_SENSOR_MIN_FAN_RPM,
       (void *)&min_rpm, &size);
 if (r)
  return r;

 return snprintf(buf, PAGE_SIZE, "%d\n", min_rpm);
}
