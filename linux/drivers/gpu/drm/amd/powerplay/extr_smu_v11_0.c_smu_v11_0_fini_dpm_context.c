
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_dpm_context {scalar_t__ dpm_context_size; int * dpm_request_power_state; int * dpm_current_power_state; int * golden_dpm_context; int * dpm_context; } ;
struct smu_context {struct smu_dpm_context smu_dpm; } ;


 int EINVAL ;
 int kfree (int *) ;

__attribute__((used)) static int smu_v11_0_fini_dpm_context(struct smu_context *smu)
{
 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;

 if (!smu_dpm->dpm_context || smu_dpm->dpm_context_size == 0)
  return -EINVAL;

 kfree(smu_dpm->dpm_context);
 kfree(smu_dpm->golden_dpm_context);
 kfree(smu_dpm->dpm_current_power_state);
 kfree(smu_dpm->dpm_request_power_state);
 smu_dpm->dpm_context = ((void*)0);
 smu_dpm->golden_dpm_context = ((void*)0);
 smu_dpm->dpm_context_size = 0;
 smu_dpm->dpm_current_power_state = ((void*)0);
 smu_dpm->dpm_request_power_state = ((void*)0);

 return 0;
}
