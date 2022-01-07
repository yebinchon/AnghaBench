
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct TYPE_2__ {int (* power_off_asic ) (struct pp_hwmgr*) ;} ;


 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*) ;

int phm_power_down_asic(struct pp_hwmgr *hwmgr)
{
 PHM_FUNC_CHECK(hwmgr);

 if (((void*)0) != hwmgr->hwmgr_func->power_off_asic)
  return hwmgr->hwmgr_func->power_off_asic(hwmgr);

 return 0;
}
