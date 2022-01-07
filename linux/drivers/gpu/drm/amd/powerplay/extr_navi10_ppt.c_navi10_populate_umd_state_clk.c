
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int pstate_sclk; int pstate_mclk; } ;


 int SMU_MCLK ;
 int SMU_SCLK ;
 int smu_get_dpm_freq_range (struct smu_context*,int ,int*,int *) ;

__attribute__((used)) static int navi10_populate_umd_state_clk(struct smu_context *smu)
{
 int ret = 0;
 uint32_t min_sclk_freq = 0, min_mclk_freq = 0;

 ret = smu_get_dpm_freq_range(smu, SMU_SCLK, &min_sclk_freq, ((void*)0));
 if (ret)
  return ret;

 smu->pstate_sclk = min_sclk_freq * 100;

 ret = smu_get_dpm_freq_range(smu, SMU_MCLK, &min_mclk_freq, ((void*)0));
 if (ret)
  return ret;

 smu->pstate_mclk = min_mclk_freq * 100;

 return ret;
}
