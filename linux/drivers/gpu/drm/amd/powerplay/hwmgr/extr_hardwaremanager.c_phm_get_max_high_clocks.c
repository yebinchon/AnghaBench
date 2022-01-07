
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct amd_pp_simple_clock_info {int dummy; } ;
struct TYPE_2__ {int (* get_max_high_clocks ) (struct pp_hwmgr*,struct amd_pp_simple_clock_info*) ;} ;


 int EINVAL ;
 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,struct amd_pp_simple_clock_info*) ;

int phm_get_max_high_clocks(struct pp_hwmgr *hwmgr, struct amd_pp_simple_clock_info *clocks)
{
 PHM_FUNC_CHECK(hwmgr);

 if (hwmgr->hwmgr_func->get_max_high_clocks == ((void*)0))
  return -EINVAL;

 return hwmgr->hwmgr_func->get_max_high_clocks(hwmgr, clocks);
}
