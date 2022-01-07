
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {unsigned int num_vce_state_tables; struct amd_vce_state* vce_states; int pm_en; } ;
struct amd_vce_state {int dummy; } ;



__attribute__((used)) static struct amd_vce_state*
pp_dpm_get_vce_clock_state(void *handle, unsigned idx)
{
 struct pp_hwmgr *hwmgr = handle;

 if (!hwmgr || !hwmgr->pm_en)
  return ((void*)0);

 if (idx < hwmgr->num_vce_state_tables)
  return &hwmgr->vce_states[idx];
 return ((void*)0);
}
