
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_dpm_context {int dpm_context; } ;
struct smu_context {struct smu_dpm_context smu_dpm; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;


 int AMD_PP_TASK_READJUST_POWER_STATE ;
 int EINVAL ;
 int smu_enable_umd_pstate (struct smu_context*,int*) ;
 int smu_handle_task (struct smu_context*,int,int ) ;

int smu_force_performance_level(struct smu_context *smu, enum amd_dpm_forced_level level)
{
 struct smu_dpm_context *smu_dpm_ctx = &(smu->smu_dpm);
 int ret = 0;

 if (!smu_dpm_ctx->dpm_context)
  return -EINVAL;

 ret = smu_enable_umd_pstate(smu, &level);
 if (ret)
  return ret;

 ret = smu_handle_task(smu, level,
         AMD_PP_TASK_READJUST_POWER_STATE);

 return ret;
}
