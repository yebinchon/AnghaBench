
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {int flags; TYPE_2__ powerplay; int smu; TYPE_3__* ddev; } ;
typedef int ssize_t ;
struct TYPE_6__ {scalar_t__ switch_power_state; } ;
struct TYPE_4__ {int set_fan_control_mode; } ;


 int AMD_FAN_CTRL_AUTO ;
 int AMD_FAN_CTRL_MANUAL ;
 int AMD_IS_PX ;
 scalar_t__ DRM_SWITCH_POWER_ON ;
 int EINVAL ;
 int amdgpu_dpm_set_fan_control_mode (struct amdgpu_device*,int ) ;
 struct amdgpu_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int kstrtoint (char const*,int,int*) ;
 int smu_set_fan_control_mode (int *,int ) ;

__attribute__((used)) static ssize_t amdgpu_hwmon_set_fan1_enable(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t count)
{
 struct amdgpu_device *adev = dev_get_drvdata(dev);
 int err;
 int value;
 u32 pwm_mode;


 if ((adev->flags & AMD_IS_PX) &&
      (adev->ddev->switch_power_state != DRM_SWITCH_POWER_ON))
  return -EINVAL;


 err = kstrtoint(buf, 10, &value);
 if (err)
  return err;

 if (value == 0)
  pwm_mode = AMD_FAN_CTRL_AUTO;
 else if (value == 1)
  pwm_mode = AMD_FAN_CTRL_MANUAL;
 else
  return -EINVAL;

 if (is_support_sw_smu(adev)) {
  smu_set_fan_control_mode(&adev->smu, pwm_mode);
 } else {
  if (!adev->powerplay.pp_funcs->set_fan_control_mode)
   return -EINVAL;
  amdgpu_dpm_set_fan_control_mode(adev, pwm_mode);
 }

 return count;
}
