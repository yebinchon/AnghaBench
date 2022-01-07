
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pp_hwmgr {TYPE_2__* pptable_func; TYPE_1__* hwmgr_func; int pm_en; } ;
struct TYPE_4__ {int (* pptable_fini ) (struct pp_hwmgr*) ;} ;
struct TYPE_3__ {int (* backend_fini ) (struct pp_hwmgr*) ;} ;


 int phm_disable_clock_power_gatings (struct pp_hwmgr*) ;
 int phm_disable_dynamic_state_management (struct pp_hwmgr*) ;
 int phm_stop_thermal_controller (struct pp_hwmgr*) ;
 int psm_adjust_power_state_dynamic (struct pp_hwmgr*,int,int *) ;
 int psm_fini_power_state_table (struct pp_hwmgr*) ;
 int psm_set_boot_states (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*) ;
 int stub2 (struct pp_hwmgr*) ;

int hwmgr_hw_fini(struct pp_hwmgr *hwmgr)
{
 if (!hwmgr || !hwmgr->pm_en)
  return 0;

 phm_stop_thermal_controller(hwmgr);
 psm_set_boot_states(hwmgr);
 psm_adjust_power_state_dynamic(hwmgr, 1, ((void*)0));
 phm_disable_dynamic_state_management(hwmgr);
 phm_disable_clock_power_gatings(hwmgr);

 if (hwmgr->hwmgr_func->backend_fini)
  hwmgr->hwmgr_func->backend_fini(hwmgr);
 if (hwmgr->pptable_func->pptable_fini)
  hwmgr->pptable_func->pptable_fini(hwmgr);
 return psm_fini_power_state_table(hwmgr);
}
