
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_power_state {int dummy; } ;
struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct TYPE_2__ {int (* apply_state_adjust_rules ) (struct pp_hwmgr*,struct pp_power_state*,struct pp_power_state const*) ;} ;


 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,struct pp_power_state*,struct pp_power_state const*) ;

int phm_apply_state_adjust_rules(struct pp_hwmgr *hwmgr,
       struct pp_power_state *adjusted_ps,
        const struct pp_power_state *current_ps)
{
 PHM_FUNC_CHECK(hwmgr);

 if (hwmgr->hwmgr_func->apply_state_adjust_rules != ((void*)0))
  return hwmgr->hwmgr_func->apply_state_adjust_rules(
         hwmgr,
         adjusted_ps,
         current_ps);
 return 0;
}
