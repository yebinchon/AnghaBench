
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smu_dpm_context {TYPE_2__* dpm_current_power_state; int dpm_context; } ;
struct smu_context {int mutex; struct smu_dpm_context smu_dpm; } ;
typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
struct TYPE_3__ {int ui_label; int flags; } ;
struct TYPE_4__ {TYPE_1__ classification; } ;


 int EINVAL ;
 int POWER_STATE_TYPE_BALANCED ;
 int POWER_STATE_TYPE_BATTERY ;
 int POWER_STATE_TYPE_DEFAULT ;
 int POWER_STATE_TYPE_INTERNAL_BOOT ;
 int POWER_STATE_TYPE_PERFORMANCE ;
 int SMU_STATE_CLASSIFICATION_FLAG_BOOT ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum
amd_pm_state_type vega20_get_current_power_state(struct smu_context *smu)
{
 enum amd_pm_state_type pm_type;
 struct smu_dpm_context *smu_dpm_ctx = &(smu->smu_dpm);

 if (!smu_dpm_ctx->dpm_context ||
     !smu_dpm_ctx->dpm_current_power_state)
  return -EINVAL;

 mutex_lock(&(smu->mutex));
 switch (smu_dpm_ctx->dpm_current_power_state->classification.ui_label) {
 case 129:
  pm_type = POWER_STATE_TYPE_BATTERY;
  break;
 case 130:
  pm_type = POWER_STATE_TYPE_BALANCED;
  break;
 case 128:
  pm_type = POWER_STATE_TYPE_PERFORMANCE;
  break;
 default:
  if (smu_dpm_ctx->dpm_current_power_state->classification.flags & SMU_STATE_CLASSIFICATION_FLAG_BOOT)
   pm_type = POWER_STATE_TYPE_INTERNAL_BOOT;
  else
   pm_type = POWER_STATE_TYPE_DEFAULT;
  break;
 }
 mutex_unlock(&(smu->mutex));

 return pm_type;
}
