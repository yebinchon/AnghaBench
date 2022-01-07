
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_power_state {int hardware; } ;
struct pp_hwmgr {int ps_size; struct pp_power_state* request_ps; struct pp_power_state* current_ps; } ;


 int memcpy (struct pp_power_state*,struct pp_power_state*,int ) ;
 int phm_apply_state_adjust_rules (struct pp_hwmgr*,struct pp_power_state*,struct pp_power_state*) ;
 scalar_t__ phm_check_smc_update_required_for_display_configuration (struct pp_hwmgr*) ;
 scalar_t__ phm_check_states_equal (struct pp_hwmgr*,int *,int *,int*) ;
 int phm_set_power_state (struct pp_hwmgr*,int *,int *) ;

__attribute__((used)) static void power_state_management(struct pp_hwmgr *hwmgr,
      struct pp_power_state *new_ps)
{
 struct pp_power_state *pcurrent;
 struct pp_power_state *requested;
 bool equal;

 if (new_ps != ((void*)0))
  requested = new_ps;
 else
  requested = hwmgr->request_ps;

 pcurrent = hwmgr->current_ps;

 phm_apply_state_adjust_rules(hwmgr, requested, pcurrent);
 if (pcurrent == ((void*)0) || (0 != phm_check_states_equal(hwmgr,
   &pcurrent->hardware, &requested->hardware, &equal)))
  equal = 0;

 if (!equal || phm_check_smc_update_required_for_display_configuration(hwmgr)) {
  phm_set_power_state(hwmgr, &pcurrent->hardware, &requested->hardware);
  memcpy(hwmgr->current_ps, hwmgr->request_ps, hwmgr->ps_size);
 }
}
