
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_dpm_context {int dpm_level; int dpm_context; } ;
struct smu_context {int mutex; struct smu_dpm_context smu_dpm; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

enum amd_dpm_forced_level smu_get_performance_level(struct smu_context *smu)
{
 struct smu_dpm_context *smu_dpm_ctx = &(smu->smu_dpm);
 enum amd_dpm_forced_level level;

 if (!smu_dpm_ctx->dpm_context)
  return -EINVAL;

 mutex_lock(&(smu->mutex));
 level = smu_dpm_ctx->dpm_level;
 mutex_unlock(&(smu->mutex));

 return level;
}
