
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ui_label; int flags; } ;
struct pp_power_state {TYPE_1__ classification; } ;
struct pp_hwmgr {int smu_lock; struct pp_power_state* current_ps; int pm_en; } ;
typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;


 int EINVAL ;
 int POWER_STATE_TYPE_BALANCED ;
 int POWER_STATE_TYPE_BATTERY ;
 int POWER_STATE_TYPE_DEFAULT ;
 int POWER_STATE_TYPE_INTERNAL_BOOT ;
 int POWER_STATE_TYPE_PERFORMANCE ;
 int PP_StateClassificationFlag_Boot ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum amd_pm_state_type pp_dpm_get_current_power_state(void *handle)
{
 struct pp_hwmgr *hwmgr = handle;
 struct pp_power_state *state;
 enum amd_pm_state_type pm_type;

 if (!hwmgr || !hwmgr->pm_en || !hwmgr->current_ps)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);

 state = hwmgr->current_ps;

 switch (state->classification.ui_label) {
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
  if (state->classification.flags & PP_StateClassificationFlag_Boot)
   pm_type = POWER_STATE_TYPE_INTERNAL_BOOT;
  else
   pm_type = POWER_STATE_TYPE_DEFAULT;
  break;
 }
 mutex_unlock(&hwmgr->smu_lock);

 return pm_type;
}
