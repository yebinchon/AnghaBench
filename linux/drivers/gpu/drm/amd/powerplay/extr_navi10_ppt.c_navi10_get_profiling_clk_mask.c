
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu_context {int dummy; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;


 int AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_PEAK ;
 int SMU_MCLK ;
 int SMU_SCLK ;
 int SMU_SOCCLK ;
 int smu_get_dpm_level_count (struct smu_context*,int ,scalar_t__*) ;

__attribute__((used)) static int navi10_get_profiling_clk_mask(struct smu_context *smu,
      enum amd_dpm_forced_level level,
      uint32_t *sclk_mask,
      uint32_t *mclk_mask,
      uint32_t *soc_mask)
{
 int ret = 0;
 uint32_t level_count = 0;

 if (level == AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK) {
  if (sclk_mask)
   *sclk_mask = 0;
 } else if (level == AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK) {
  if (mclk_mask)
   *mclk_mask = 0;
 } else if (level == AMD_DPM_FORCED_LEVEL_PROFILE_PEAK) {
  if(sclk_mask) {
   ret = smu_get_dpm_level_count(smu, SMU_SCLK, &level_count);
   if (ret)
    return ret;
   *sclk_mask = level_count - 1;
  }

  if(mclk_mask) {
   ret = smu_get_dpm_level_count(smu, SMU_MCLK, &level_count);
   if (ret)
    return ret;
   *mclk_mask = level_count - 1;
  }

  if(soc_mask) {
   ret = smu_get_dpm_level_count(smu, SMU_SOCCLK, &level_count);
   if (ret)
    return ret;
   *soc_mask = level_count - 1;
  }
 }

 return ret;
}
