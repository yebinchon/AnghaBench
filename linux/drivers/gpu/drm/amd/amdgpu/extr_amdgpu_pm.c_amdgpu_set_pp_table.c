
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
struct TYPE_3__ {scalar_t__ set_pp_table; } ;


 int amdgpu_dpm_set_pp_table (struct amdgpu_device*,char const*,size_t) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_sys_set_pp_table (int *,void*,size_t) ;

__attribute__((used)) static ssize_t amdgpu_set_pp_table(struct device *dev,
  struct device_attribute *attr,
  const char *buf,
  size_t count)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 int ret = 0;

 if (is_support_sw_smu(adev)) {
  ret = smu_sys_set_pp_table(&adev->smu, (void *)buf, count);
  if (ret)
   return ret;
 } else if (adev->powerplay.pp_funcs->set_pp_table)
  amdgpu_dpm_set_pp_table(adev, buf, count);

 return count;
}
