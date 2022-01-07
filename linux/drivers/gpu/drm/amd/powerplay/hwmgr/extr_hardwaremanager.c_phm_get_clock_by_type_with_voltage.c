
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct pp_clock_levels_with_voltage {int dummy; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;
struct TYPE_2__ {int (* get_clock_by_type_with_voltage ) (struct pp_hwmgr*,int,struct pp_clock_levels_with_voltage*) ;} ;


 int EINVAL ;
 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,int,struct pp_clock_levels_with_voltage*) ;

int phm_get_clock_by_type_with_voltage(struct pp_hwmgr *hwmgr,
  enum amd_pp_clock_type type,
  struct pp_clock_levels_with_voltage *clocks)
{
 PHM_FUNC_CHECK(hwmgr);

 if (hwmgr->hwmgr_func->get_clock_by_type_with_voltage == ((void*)0))
  return -EINVAL;

 return hwmgr->hwmgr_func->get_clock_by_type_with_voltage(hwmgr, type, clocks);

}
