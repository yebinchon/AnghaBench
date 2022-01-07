
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
 int SMU_MCLK ;
 int SMU_SCLK ;
 int SMU_SOCCLK ;
 int smu_force_clk_levels (struct smu_context*,int ,int) ;
 int smu_force_dpm_limit_value (struct smu_context*,int) ;
 int smu_get_profiling_clk_mask (struct smu_context*,int,int*,int*,int*) ;
 int smu_unforce_dpm_levels (struct smu_context*) ;

__attribute__((used)) static int smu_default_set_performance_level(struct smu_context *smu, enum amd_dpm_forced_level level)
{
 int ret = 0;
 uint32_t sclk_mask, mclk_mask, soc_mask;

 switch (level) {
 case 135:
  ret = smu_force_dpm_limit_value(smu, 1);
  break;
 case 134:
  ret = smu_force_dpm_limit_value(smu, 0);
  break;
 case 136:
 case 128:
  ret = smu_unforce_dpm_levels(smu);
  break;
 case 130:
 case 131:
 case 129:
  ret = smu_get_profiling_clk_mask(smu, level,
       &sclk_mask,
       &mclk_mask,
       &soc_mask);
  if (ret)
   return ret;
  smu_force_clk_levels(smu, SMU_SCLK, 1 << sclk_mask);
  smu_force_clk_levels(smu, SMU_MCLK, 1 << mclk_mask);
  smu_force_clk_levels(smu, SMU_SOCCLK, 1 << soc_mask);
  break;
 case 133:
 case 132:
 default:
  break;
 }
 return ret;
}
