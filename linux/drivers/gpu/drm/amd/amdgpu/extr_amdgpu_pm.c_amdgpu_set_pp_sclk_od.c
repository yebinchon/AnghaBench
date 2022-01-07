
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int boot_ps; int current_ps; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct TYPE_6__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_2__ powerplay; int smu; } ;
typedef size_t ssize_t ;
struct TYPE_5__ {scalar_t__ dispatch_tasks; scalar_t__ set_sclk_od; } ;


 int AMD_PP_TASK_READJUST_POWER_STATE ;
 size_t EINVAL ;
 int SMU_OD_SCLK ;
 int amdgpu_dpm_dispatch_task (struct amdgpu_device*,int ,int *) ;
 int amdgpu_dpm_set_sclk_od (struct amdgpu_device*,int ) ;
 int amdgpu_pm_compute_clocks (struct amdgpu_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int kstrtol (char const*,int ,long*) ;
 long smu_set_od_percentage (int *,int ,int ) ;

__attribute__((used)) static ssize_t amdgpu_set_pp_sclk_od(struct device *dev,
  struct device_attribute *attr,
  const char *buf,
  size_t count)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 int ret;
 long int value;

 ret = kstrtol(buf, 0, &value);

 if (ret) {
  count = -EINVAL;
  goto fail;
 }

 if (is_support_sw_smu(adev)) {
  value = smu_set_od_percentage(&(adev->smu), SMU_OD_SCLK, (uint32_t)value);
 } else {
  if (adev->powerplay.pp_funcs->set_sclk_od)
   amdgpu_dpm_set_sclk_od(adev, (uint32_t)value);

  if (adev->powerplay.pp_funcs->dispatch_tasks) {
   amdgpu_dpm_dispatch_task(adev, AMD_PP_TASK_READJUST_POWER_STATE, ((void*)0));
  } else {
   adev->pm.dpm.current_ps = adev->pm.dpm.boot_ps;
   amdgpu_pm_compute_clocks(adev);
  }
 }

fail:
 return count;
}
