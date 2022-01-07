
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct TYPE_2__ {int (* set_watermarks_for_clocks_ranges ) (struct pp_hwmgr*,void*) ;} ;


 int EINVAL ;
 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,void*) ;

int phm_set_watermarks_for_clocks_ranges(struct pp_hwmgr *hwmgr,
     void *clock_ranges)
{
 PHM_FUNC_CHECK(hwmgr);

 if (!hwmgr->hwmgr_func->set_watermarks_for_clocks_ranges)
  return -EINVAL;

 return hwmgr->hwmgr_func->set_watermarks_for_clocks_ranges(hwmgr,
        clock_ranges);
}
