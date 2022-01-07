
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct TYPE_2__ {int (* set_min_deep_sleep_dcefclk ) (struct pp_hwmgr*,int ) ;} ;


 int EINVAL ;
 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,int ) ;

int phm_set_min_deep_sleep_dcefclk(struct pp_hwmgr *hwmgr, uint32_t clock)
{
 PHM_FUNC_CHECK(hwmgr);

 if (!hwmgr->hwmgr_func->set_min_deep_sleep_dcefclk)
  return -EINVAL;

 return hwmgr->hwmgr_func->set_min_deep_sleep_dcefclk(hwmgr, clock);
}
