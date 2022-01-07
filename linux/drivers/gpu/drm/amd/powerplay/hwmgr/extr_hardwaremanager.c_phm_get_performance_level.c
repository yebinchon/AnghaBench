
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct pp_hw_power_state {int dummy; } ;
struct TYPE_2__ {int (* get_performance_level ) (struct pp_hwmgr*,struct pp_hw_power_state const*,int ,int ,int *) ;} ;
typedef int PHM_PerformanceLevelDesignation ;
typedef int PHM_PerformanceLevel ;


 int EINVAL ;
 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,struct pp_hw_power_state const*,int ,int ,int *) ;

int phm_get_performance_level(struct pp_hwmgr *hwmgr, const struct pp_hw_power_state *state,
    PHM_PerformanceLevelDesignation designation, uint32_t index,
    PHM_PerformanceLevel *level)
{
 PHM_FUNC_CHECK(hwmgr);
 if (hwmgr->hwmgr_func->get_performance_level == ((void*)0))
  return -EINVAL;

 return hwmgr->hwmgr_func->get_performance_level(hwmgr, state, designation, index, level);


}
