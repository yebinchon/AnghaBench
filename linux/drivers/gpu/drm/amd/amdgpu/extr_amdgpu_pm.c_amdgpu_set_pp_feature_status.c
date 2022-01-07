
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {scalar_t__ set_ppfeature_status; } ;


 size_t EINVAL ;
 int amdgpu_dpm_set_ppfeature_status (struct amdgpu_device*,int ) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int kstrtou64 (char const*,int ,int *) ;
 int pr_debug (char*,int ) ;
 int smu_sys_set_pp_feature_mask (int *,int ) ;

__attribute__((used)) static ssize_t amdgpu_set_pp_feature_status(struct device *dev,
  struct device_attribute *attr,
  const char *buf,
  size_t count)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 uint64_t featuremask;
 int ret;

 ret = kstrtou64(buf, 0, &featuremask);
 if (ret)
  return -EINVAL;

 pr_debug("featuremask = 0x%llx\n", featuremask);

 if (is_support_sw_smu(adev)) {
  ret = smu_sys_set_pp_feature_mask(&adev->smu, featuremask);
  if (ret)
   return -EINVAL;
 } else if (adev->powerplay.pp_funcs->set_ppfeature_status) {
  ret = amdgpu_dpm_set_ppfeature_status(adev, featuremask);
  if (ret)
   return -EINVAL;
 }

 return count;
}
