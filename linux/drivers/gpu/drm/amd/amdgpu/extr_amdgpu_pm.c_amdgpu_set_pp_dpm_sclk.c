
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ force_clock_level; } ;


 int EINVAL ;
 int PP_SCLK ;
 int SMU_SCLK ;
 int amdgpu_dpm_force_clock_level (struct amdgpu_device*,int ,int ) ;
 int amdgpu_read_mask (char const*,size_t,int *) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_force_clk_levels (int *,int ,int ) ;

__attribute__((used)) static ssize_t amdgpu_set_pp_dpm_sclk(struct device *dev,
  struct device_attribute *attr,
  const char *buf,
  size_t count)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 int ret;
 uint32_t mask = 0;

 if (amdgpu_sriov_vf(adev))
  return 0;

 ret = amdgpu_read_mask(buf, count, &mask);
 if (ret)
  return ret;

 if (is_support_sw_smu(adev))
  ret = smu_force_clk_levels(&adev->smu, SMU_SCLK, mask);
 else if (adev->powerplay.pp_funcs->force_clock_level)
  ret = amdgpu_dpm_force_clock_level(adev, PP_SCLK, mask);

 if (ret)
  return -EINVAL;

 return count;
}
