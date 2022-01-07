
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct drm_device {scalar_t__ switch_power_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {int flags; struct drm_device* ddev; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int AMDGPU_PP_SENSOR_EDGE_TEMP ;
 int AMDGPU_PP_SENSOR_HOTSPOT_TEMP ;
 int AMDGPU_PP_SENSOR_MEM_TEMP ;
 int AMD_IS_PX ;
 scalar_t__ DRM_SWITCH_POWER_ON ;
 int EINVAL ;
 int PAGE_SIZE ;


 int PP_TEMP_MAX ;

 int amdgpu_dpm_read_sensor (struct amdgpu_device*,int ,void*,int*) ;
 struct amdgpu_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t amdgpu_hwmon_show_temp(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct amdgpu_device *adev = dev_get_drvdata(dev);
 struct drm_device *ddev = adev->ddev;
 int channel = to_sensor_dev_attr(attr)->index;
 int r, temp = 0, size = sizeof(temp);


 if ((adev->flags & AMD_IS_PX) &&
      (ddev->switch_power_state != DRM_SWITCH_POWER_ON))
  return -EINVAL;

 if (channel >= PP_TEMP_MAX)
  return -EINVAL;

 switch (channel) {
 case 129:

  r = amdgpu_dpm_read_sensor(adev, AMDGPU_PP_SENSOR_HOTSPOT_TEMP,
        (void *)&temp, &size);
  if (r)
   return r;
  break;
 case 130:

  r = amdgpu_dpm_read_sensor(adev, AMDGPU_PP_SENSOR_EDGE_TEMP,
        (void *)&temp, &size);
  if (r)
   return r;
  break;
 case 128:

  r = amdgpu_dpm_read_sensor(adev, AMDGPU_PP_SENSOR_MEM_TEMP,
        (void *)&temp, &size);
  if (r)
   return r;
  break;
 }

 return snprintf(buf, PAGE_SIZE, "%d\n", temp);
}
