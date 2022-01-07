
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t u32 ;
struct si_ps {size_t performance_level_count; TYPE_1__* performance_levels; } ;
struct amdgpu_ps {int dummy; } ;
struct evergreen_power_info {struct amdgpu_ps current_rps; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int mclk; int sclk; } ;





 size_t CURRENT_STATE_INDEX_MASK ;
 size_t CURRENT_STATE_INDEX_SHIFT ;
 int EINVAL ;
 size_t RREG32 (int ) ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;
 struct evergreen_power_info* evergreen_get_pi (struct amdgpu_device*) ;
 int si_dpm_get_temp (struct amdgpu_device*) ;
 struct si_ps* si_get_ps (struct amdgpu_ps*) ;

__attribute__((used)) static int si_dpm_read_sensor(void *handle, int idx,
         void *value, int *size)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct evergreen_power_info *eg_pi = evergreen_get_pi(adev);
 struct amdgpu_ps *rps = &eg_pi->current_rps;
 struct si_ps *ps = si_get_ps(rps);
 uint32_t sclk, mclk;
 u32 pl_index =
  (RREG32(TARGET_AND_CURRENT_PROFILE_INDEX) & CURRENT_STATE_INDEX_MASK) >>
  CURRENT_STATE_INDEX_SHIFT;


 if (*size < 4)
  return -EINVAL;

 switch (idx) {
 case 129:
  if (pl_index < ps->performance_level_count) {
   sclk = ps->performance_levels[pl_index].sclk;
   *((uint32_t *)value) = sclk;
   *size = 4;
   return 0;
  }
  return -EINVAL;
 case 130:
  if (pl_index < ps->performance_level_count) {
   mclk = ps->performance_levels[pl_index].mclk;
   *((uint32_t *)value) = mclk;
   *size = 4;
   return 0;
  }
  return -EINVAL;
 case 128:
  *((uint32_t *)value) = si_dpm_get_temp(adev);
  *size = 4;
  return 0;
 default:
  return -EINVAL;
 }
}
