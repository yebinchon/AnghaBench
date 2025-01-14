
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct pp_power_state {unsigned int id; TYPE_2__ classification; } ;
struct pp_hwmgr {unsigned int num_ps; int ps_size; struct pp_power_state* uvd_ps; struct pp_power_state* request_ps; struct pp_power_state* current_ps; struct pp_power_state* boot_ps; TYPE_1__* hwmgr_func; struct pp_power_state* ps; } ;
struct TYPE_3__ {unsigned int (* get_num_of_pp_table_entries ) (struct pp_hwmgr*) ;int (* get_power_state_size ) (struct pp_hwmgr*) ;int (* get_pp_table_entry ) (struct pp_hwmgr*,unsigned int,struct pp_power_state*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PP_StateClassificationFlag_Boot ;
 int PP_StateClassificationFlag_Uvd ;
 struct pp_power_state* kcalloc (unsigned int,int,int ) ;
 int kfree (struct pp_power_state*) ;
 void* kzalloc (int,int ) ;
 int memcpy (struct pp_power_state*,struct pp_power_state*,int) ;
 int pr_warn (char*) ;
 unsigned int stub1 (struct pp_hwmgr*) ;
 int stub2 (struct pp_hwmgr*) ;
 int stub3 (struct pp_hwmgr*,unsigned int,struct pp_power_state*) ;

int psm_init_power_state_table(struct pp_hwmgr *hwmgr)
{
 int result;
 unsigned int i;
 unsigned int table_entries;
 struct pp_power_state *state;
 int size;

 if (hwmgr->hwmgr_func->get_num_of_pp_table_entries == ((void*)0))
  return 0;

 if (hwmgr->hwmgr_func->get_power_state_size == ((void*)0))
  return 0;

 hwmgr->num_ps = table_entries = hwmgr->hwmgr_func->get_num_of_pp_table_entries(hwmgr);

 hwmgr->ps_size = size = hwmgr->hwmgr_func->get_power_state_size(hwmgr) +
       sizeof(struct pp_power_state);

 if (table_entries == 0 || size == 0) {
  pr_warn("Please check whether power state management is supported on this asic\n");
  return 0;
 }

 hwmgr->ps = kcalloc(table_entries, size, GFP_KERNEL);
 if (hwmgr->ps == ((void*)0))
  return -ENOMEM;

 hwmgr->request_ps = kzalloc(size, GFP_KERNEL);
 if (hwmgr->request_ps == ((void*)0)) {
  kfree(hwmgr->ps);
  hwmgr->ps = ((void*)0);
  return -ENOMEM;
 }

 hwmgr->current_ps = kzalloc(size, GFP_KERNEL);
 if (hwmgr->current_ps == ((void*)0)) {
  kfree(hwmgr->request_ps);
  kfree(hwmgr->ps);
  hwmgr->request_ps = ((void*)0);
  hwmgr->ps = ((void*)0);
  return -ENOMEM;
 }

 state = hwmgr->ps;

 for (i = 0; i < table_entries; i++) {
  result = hwmgr->hwmgr_func->get_pp_table_entry(hwmgr, i, state);

  if (state->classification.flags & PP_StateClassificationFlag_Boot) {
   hwmgr->boot_ps = state;
   memcpy(hwmgr->current_ps, state, size);
   memcpy(hwmgr->request_ps, state, size);
  }

  state->id = i + 1;

  if (state->classification.flags & PP_StateClassificationFlag_Uvd)
   hwmgr->uvd_ps = state;
  state = (struct pp_power_state *)((unsigned long)state + size);
 }

 return 0;
}
