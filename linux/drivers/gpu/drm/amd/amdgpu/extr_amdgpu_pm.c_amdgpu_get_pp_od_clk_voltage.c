
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
struct TYPE_3__ {scalar_t__ print_clock_levels; } ;


 int OD_MCLK ;
 int OD_RANGE ;
 int OD_SCLK ;
 int OD_VDDC_CURVE ;
 int PAGE_SIZE ;
 int SMU_OD_MCLK ;
 int SMU_OD_RANGE ;
 int SMU_OD_SCLK ;
 int SMU_OD_VDDC_CURVE ;
 int amdgpu_dpm_print_clock_levels (struct amdgpu_device*,int ,char*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_print_clk_levels (int *,int ,char*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t amdgpu_get_pp_od_clk_voltage(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 uint32_t size = 0;

 if (is_support_sw_smu(adev)) {
  size = smu_print_clk_levels(&adev->smu, SMU_OD_SCLK, buf);
  size += smu_print_clk_levels(&adev->smu, SMU_OD_MCLK, buf+size);
  size += smu_print_clk_levels(&adev->smu, SMU_OD_VDDC_CURVE, buf+size);
  size += smu_print_clk_levels(&adev->smu, SMU_OD_RANGE, buf+size);
  return size;
 } else if (adev->powerplay.pp_funcs->print_clock_levels) {
  size = amdgpu_dpm_print_clock_levels(adev, OD_SCLK, buf);
  size += amdgpu_dpm_print_clock_levels(adev, OD_MCLK, buf+size);
  size += amdgpu_dpm_print_clock_levels(adev, OD_VDDC_CURVE, buf+size);
  size += amdgpu_dpm_print_clock_levels(adev, OD_RANGE, buf+size);
  return size;
 } else {
  return snprintf(buf, PAGE_SIZE, "\n");
 }

}
