
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct pp_display_clock_request {int dummy; } ;
struct TYPE_2__ {int (* display_clock_voltage_request ) (struct pp_hwmgr*,struct pp_display_clock_request*) ;} ;


 int EINVAL ;
 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,struct pp_display_clock_request*) ;

int phm_display_clock_voltage_request(struct pp_hwmgr *hwmgr,
  struct pp_display_clock_request *clock)
{
 PHM_FUNC_CHECK(hwmgr);

 if (!hwmgr->hwmgr_func->display_clock_voltage_request)
  return -EINVAL;

 return hwmgr->hwmgr_func->display_clock_voltage_request(hwmgr, clock);
}
