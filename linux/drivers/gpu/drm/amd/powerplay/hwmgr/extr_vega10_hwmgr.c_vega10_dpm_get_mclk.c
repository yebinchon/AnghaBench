
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vega10_power_state {int performance_level_count; TYPE_1__* performance_levels; } ;
struct pp_power_state {int hardware; } ;
struct pp_hwmgr {struct pp_power_state* request_ps; } ;
struct TYPE_2__ {int mem_clock; } ;


 int EINVAL ;
 struct vega10_power_state* cast_phw_vega10_power_state (int *) ;

__attribute__((used)) static uint32_t vega10_dpm_get_mclk(struct pp_hwmgr *hwmgr, bool low)
{
 struct pp_power_state *ps;
 struct vega10_power_state *vega10_ps;

 if (hwmgr == ((void*)0))
  return -EINVAL;

 ps = hwmgr->request_ps;

 if (ps == ((void*)0))
  return -EINVAL;

 vega10_ps = cast_phw_vega10_power_state(&ps->hardware);

 if (low)
  return vega10_ps->performance_levels[0].mem_clock;
 else
  return vega10_ps->performance_levels
    [vega10_ps->performance_level_count-1].mem_clock;
}
