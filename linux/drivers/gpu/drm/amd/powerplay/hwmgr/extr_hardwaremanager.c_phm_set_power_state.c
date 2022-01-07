
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct pp_hw_power_state {int dummy; } ;
struct phm_set_power_state_input {struct pp_hw_power_state const* pnew_state; struct pp_hw_power_state const* pcurrent_state; } ;
struct TYPE_2__ {int (* power_state_set ) (struct pp_hwmgr*,struct phm_set_power_state_input*) ;} ;


 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,struct phm_set_power_state_input*) ;

int phm_set_power_state(struct pp_hwmgr *hwmgr,
      const struct pp_hw_power_state *pcurrent_state,
      const struct pp_hw_power_state *pnew_power_state)
{
 struct phm_set_power_state_input states;

 PHM_FUNC_CHECK(hwmgr);

 states.pcurrent_state = pcurrent_state;
 states.pnew_state = pnew_power_state;

 if (((void*)0) != hwmgr->hwmgr_func->power_state_set)
  return hwmgr->hwmgr_func->power_state_set(hwmgr, &states);

 return 0;
}
