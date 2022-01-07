
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_dpm_context {scalar_t__ dpm_context_size; scalar_t__ dpm_context; } ;
struct smu_context {struct smu_dpm_context smu_dpm; } ;


 int EINVAL ;
 int smu_alloc_dpm_context (struct smu_context*) ;

__attribute__((used)) static int smu_v11_0_init_dpm_context(struct smu_context *smu)
{
 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;

 if (smu_dpm->dpm_context || smu_dpm->dpm_context_size != 0)
  return -EINVAL;

 return smu_alloc_dpm_context(smu);
}
