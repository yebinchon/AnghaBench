
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_states_info {int nums; int * states; } ;
struct TYPE_2__ {int ui_label; int flags; } ;
struct pp_power_state {TYPE_1__ classification; } ;
struct pp_hwmgr {int num_ps; int ps_size; int smu_lock; scalar_t__ ps; int pm_en; } ;


 int EINVAL ;
 int POWER_STATE_TYPE_BALANCED ;
 int POWER_STATE_TYPE_BATTERY ;
 int POWER_STATE_TYPE_DEFAULT ;
 int POWER_STATE_TYPE_INTERNAL_BOOT ;
 int POWER_STATE_TYPE_PERFORMANCE ;
 int PP_StateClassificationFlag_Boot ;



 int memset (struct pp_states_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int pp_dpm_get_pp_num_states(void *handle,
  struct pp_states_info *data)
{
 struct pp_hwmgr *hwmgr = handle;
 int i;

 memset(data, 0, sizeof(*data));

 if (!hwmgr || !hwmgr->pm_en ||!hwmgr->ps)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);

 data->nums = hwmgr->num_ps;

 for (i = 0; i < hwmgr->num_ps; i++) {
  struct pp_power_state *state = (struct pp_power_state *)
    ((unsigned long)hwmgr->ps + i * hwmgr->ps_size);
  switch (state->classification.ui_label) {
  case 129:
   data->states[i] = POWER_STATE_TYPE_BATTERY;
   break;
  case 130:
   data->states[i] = POWER_STATE_TYPE_BALANCED;
   break;
  case 128:
   data->states[i] = POWER_STATE_TYPE_PERFORMANCE;
   break;
  default:
   if (state->classification.flags & PP_StateClassificationFlag_Boot)
    data->states[i] = POWER_STATE_TYPE_INTERNAL_BOOT;
   else
    data->states[i] = POWER_STATE_TYPE_DEFAULT;
  }
 }
 mutex_unlock(&hwmgr->smu_lock);
 return 0;
}
