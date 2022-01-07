
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vddnb ;
typedef int u32 ;
struct drm_device {scalar_t__ switch_power_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {int flags; struct drm_device* ddev; } ;
typedef int ssize_t ;


 int AMDGPU_PP_SENSOR_VDDNB ;
 int AMD_IS_APU ;
 int AMD_IS_PX ;
 scalar_t__ DRM_SWITCH_POWER_ON ;
 int EINVAL ;
 int PAGE_SIZE ;
 int amdgpu_dpm_read_sensor (struct amdgpu_device*,int ,void*,int*) ;
 struct amdgpu_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t amdgpu_hwmon_show_vddnb(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct amdgpu_device *adev = dev_get_drvdata(dev);
 struct drm_device *ddev = adev->ddev;
 u32 vddnb;
 int r, size = sizeof(vddnb);


 if (!(adev->flags & AMD_IS_APU))
  return -EINVAL;


 if ((adev->flags & AMD_IS_PX) &&
      (ddev->switch_power_state != DRM_SWITCH_POWER_ON))
  return -EINVAL;


 r = amdgpu_dpm_read_sensor(adev, AMDGPU_PP_SENSOR_VDDNB,
       (void *)&vddnb, &size);
 if (r)
  return r;

 return snprintf(buf, PAGE_SIZE, "%d\n", vddnb);
}
