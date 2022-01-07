
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {scalar_t__ asic_type; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;



 scalar_t__ CHIP_NAVI10 ;
 int EINVAL ;
 int navi10_set_peak_clock_by_device (struct smu_context*) ;

__attribute__((used)) static int navi10_set_performance_level(struct smu_context *smu, enum amd_dpm_forced_level level)
{
 int ret = 0;
 struct amdgpu_device *adev = smu->adev;

 if (adev->asic_type != CHIP_NAVI10)
  return -EINVAL;

 switch (level) {
 case 128:
  ret = navi10_set_peak_clock_by_device(smu);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
