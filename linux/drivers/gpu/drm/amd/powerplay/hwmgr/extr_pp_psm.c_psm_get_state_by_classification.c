
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct pp_power_state {unsigned long id; TYPE_1__ classification; } ;
struct pp_hwmgr {int num_ps; scalar_t__ ps_size; struct pp_power_state* ps; } ;
typedef enum PP_StateClassificationFlag { ____Placeholder_PP_StateClassificationFlag } PP_StateClassificationFlag ;


 int EINVAL ;

__attribute__((used)) static int psm_get_state_by_classification(struct pp_hwmgr *hwmgr,
     enum PP_StateClassificationFlag flag,
     unsigned long *state_id)
{
 struct pp_power_state *state;
 int table_entries;
 int i;

 table_entries = hwmgr->num_ps;
 state = hwmgr->ps;

 for (i = 0; i < table_entries; i++) {
  if (state->classification.flags & flag) {
   *state_id = state->id;
   return 0;
  }
  state = (struct pp_power_state *)((unsigned long)state + hwmgr->ps_size);
 }
 return -EINVAL;
}
