
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ get_power_profile_mode; } ;


 int PAGE_SIZE ;
 int amdgpu_dpm_get_power_profile_mode (struct amdgpu_device*,char*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_get_power_profile_mode (int *,char*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t amdgpu_get_pp_power_profile_mode(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;

 if (is_support_sw_smu(adev))
  return smu_get_power_profile_mode(&adev->smu, buf);
 else if (adev->powerplay.pp_funcs->get_power_profile_mode)
  return amdgpu_dpm_get_power_profile_mode(adev, buf);

 return snprintf(buf, PAGE_SIZE, "\n");
}
