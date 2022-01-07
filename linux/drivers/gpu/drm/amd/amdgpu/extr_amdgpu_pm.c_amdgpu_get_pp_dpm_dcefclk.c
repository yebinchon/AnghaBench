
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
struct TYPE_3__ {scalar_t__ print_clock_levels; } ;


 int PAGE_SIZE ;
 int PP_DCEFCLK ;
 int SMU_DCEFCLK ;
 int amdgpu_dpm_print_clock_levels (struct amdgpu_device*,int ,char*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_print_clk_levels (int *,int ,char*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t amdgpu_get_pp_dpm_dcefclk(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;

 if (is_support_sw_smu(adev))
  return smu_print_clk_levels(&adev->smu, SMU_DCEFCLK, buf);
 else if (adev->powerplay.pp_funcs->print_clock_levels)
  return amdgpu_dpm_print_clock_levels(adev, PP_DCEFCLK, buf);
 else
  return snprintf(buf, PAGE_SIZE, "\n");
}
