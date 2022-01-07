
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct TYPE_2__ {int (* check_smc_update_required_for_display_configuration ) (struct pp_hwmgr*) ;} ;


 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*) ;

bool phm_check_smc_update_required_for_display_configuration(struct pp_hwmgr *hwmgr)
{
 PHM_FUNC_CHECK(hwmgr);

 if (hwmgr->hwmgr_func->check_smc_update_required_for_display_configuration == ((void*)0))
  return 0;

 return hwmgr->hwmgr_func->check_smc_update_required_for_display_configuration(hwmgr);
}
