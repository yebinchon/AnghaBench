
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t u32 ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int SclkFrequency; } ;




 int EINVAL ;
 size_t RREG32_SMC (int ) ;
 size_t SMU__NUM_SCLK_DPM_STATE ;
 size_t TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX_MASK ;
 size_t TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX__SHIFT ;
 int be32_to_cpu (int ) ;
 int ixTARGET_AND_CURRENT_PROFILE_INDEX ;
 int kv_dpm_get_temp (struct amdgpu_device*) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int kv_dpm_read_sensor(void *handle, int idx,
         void *value, int *size)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct kv_power_info *pi = kv_get_pi(adev);
 uint32_t sclk;
 u32 pl_index =
  (RREG32_SMC(ixTARGET_AND_CURRENT_PROFILE_INDEX) &
  TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX_MASK) >>
  TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX__SHIFT;


 if (*size < 4)
  return -EINVAL;

 switch (idx) {
 case 129:
  if (pl_index < SMU__NUM_SCLK_DPM_STATE) {
   sclk = be32_to_cpu(
    pi->graphics_level[pl_index].SclkFrequency);
   *((uint32_t *)value) = sclk;
   *size = 4;
   return 0;
  }
  return -EINVAL;
 case 128:
  *((uint32_t *)value) = kv_dpm_get_temp(adev);
  *size = 4;
  return 0;
 default:
  return -EINVAL;
 }
}
