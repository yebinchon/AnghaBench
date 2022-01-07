
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;
struct pp_hw_power_state {int dummy; } ;
typedef int PHM_PerformanceLevelDesignation ;
typedef int PHM_PerformanceLevel ;



__attribute__((used)) static int vega20_get_performance_level(struct pp_hwmgr *hwmgr, const struct pp_hw_power_state *state,
    PHM_PerformanceLevelDesignation designation, uint32_t index,
    PHM_PerformanceLevel *level)
{
 return 0;
}
