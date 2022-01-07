
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ui_label; } ;
struct pp_power_state {TYPE_1__ classification; } ;
struct pp_hwmgr {int num_ps; scalar_t__ ps_size; struct pp_power_state* ps; } ;
typedef enum PP_StateUILabel { ____Placeholder_PP_StateUILabel } PP_StateUILabel ;


 int EINVAL ;


 int PP_StateUILabel_Performance ;

int psm_set_user_performance_state(struct pp_hwmgr *hwmgr,
     enum PP_StateUILabel label_id,
     struct pp_power_state **state)
{
 int table_entries;
 int i;

 if (!hwmgr->ps)
  return 0;

 table_entries = hwmgr->num_ps;
 *state = hwmgr->ps;

restart_search:
 for (i = 0; i < table_entries; i++) {
  if ((*state)->classification.ui_label & label_id)
   return 0;
  *state = (struct pp_power_state *)((uintptr_t)*state + hwmgr->ps_size);
 }

 switch (label_id) {
 case 128:
 case 129:
  label_id = PP_StateUILabel_Performance;
  goto restart_search;
 default:
  break;
 }
 return -EINVAL;
}
