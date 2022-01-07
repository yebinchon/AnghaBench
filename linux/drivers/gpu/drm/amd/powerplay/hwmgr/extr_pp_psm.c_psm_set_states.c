
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_power_state {unsigned long id; } ;
struct pp_hwmgr {int num_ps; scalar_t__ ps_size; int request_ps; struct pp_power_state* ps; } ;


 int EINVAL ;
 int memcpy (int ,struct pp_power_state*,scalar_t__) ;

__attribute__((used)) static int psm_set_states(struct pp_hwmgr *hwmgr, unsigned long state_id)
{
 struct pp_power_state *state;
 int table_entries;
 int i;

 table_entries = hwmgr->num_ps;

 state = hwmgr->ps;

 for (i = 0; i < table_entries; i++) {
  if (state->id == state_id) {
   memcpy(hwmgr->request_ps, state, hwmgr->ps_size);
   return 0;
  }
  state = (struct pp_power_state *)((unsigned long)state + hwmgr->ps_size);
 }
 return -EINVAL;
}
