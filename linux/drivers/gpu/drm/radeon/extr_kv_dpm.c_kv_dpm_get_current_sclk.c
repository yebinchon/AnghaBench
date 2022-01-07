
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct TYPE_2__ {int SclkFrequency; } ;


 size_t CURR_SCLK_INDEX_MASK ;
 size_t CURR_SCLK_INDEX_SHIFT ;
 size_t RREG32_SMC (int ) ;
 size_t SMU__NUM_SCLK_DPM_STATE ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;
 size_t be32_to_cpu (int ) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

u32 kv_dpm_get_current_sclk(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 current_index =
  (RREG32_SMC(TARGET_AND_CURRENT_PROFILE_INDEX) & CURR_SCLK_INDEX_MASK) >>
  CURR_SCLK_INDEX_SHIFT;
 u32 sclk;

 if (current_index >= SMU__NUM_SCLK_DPM_STATE) {
  return 0;
 } else {
  sclk = be32_to_cpu(pi->graphics_level[current_index].SclkFrequency);
  return sclk;
 }
}
