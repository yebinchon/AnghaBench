
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vega10_power_state {int performance_level_count; TYPE_1__* performance_levels; } ;
struct vega10_hwmgr {int dummy; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct pp_hw_power_state {int dummy; } ;
struct TYPE_5__ {int memory_clock; int coreClock; } ;
struct TYPE_4__ {int mem_clock; int gfx_clock; } ;
typedef int PHM_PerformanceLevelDesignation ;
typedef TYPE_2__ PHM_PerformanceLevel ;


 int EINVAL ;
 struct vega10_power_state* cast_const_phw_vega10_power_state (struct pp_hw_power_state const*) ;

__attribute__((used)) static int vega10_get_performance_level(struct pp_hwmgr *hwmgr, const struct pp_hw_power_state *state,
    PHM_PerformanceLevelDesignation designation, uint32_t index,
    PHM_PerformanceLevel *level)
{
 const struct vega10_power_state *ps;
 struct vega10_hwmgr *data;
 uint32_t i;

 if (level == ((void*)0) || hwmgr == ((void*)0) || state == ((void*)0))
  return -EINVAL;

 data = hwmgr->backend;
 ps = cast_const_phw_vega10_power_state(state);

 i = index > ps->performance_level_count - 1 ?
   ps->performance_level_count - 1 : index;

 level->coreClock = ps->performance_levels[i].gfx_clock;
 level->memory_clock = ps->performance_levels[i].mem_clock;

 return 0;
}
