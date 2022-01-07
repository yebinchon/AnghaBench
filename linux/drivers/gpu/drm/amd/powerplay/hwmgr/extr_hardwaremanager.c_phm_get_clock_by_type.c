
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct amd_pp_clocks {int dummy; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;
struct TYPE_2__ {int (* get_clock_by_type ) (struct pp_hwmgr*,int,struct amd_pp_clocks*) ;} ;


 int EINVAL ;
 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,int,struct amd_pp_clocks*) ;

int phm_get_clock_by_type(struct pp_hwmgr *hwmgr, enum amd_pp_clock_type type, struct amd_pp_clocks *clocks)
{
 PHM_FUNC_CHECK(hwmgr);

 if (hwmgr->hwmgr_func->get_clock_by_type == ((void*)0))
  return -EINVAL;

 return hwmgr->hwmgr_func->get_clock_by_type(hwmgr, type, clocks);

}
