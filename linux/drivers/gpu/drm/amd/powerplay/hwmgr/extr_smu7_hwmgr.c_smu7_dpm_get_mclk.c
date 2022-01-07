
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct smu7_power_state {int performance_level_count; TYPE_1__* performance_levels; } ;
struct pp_power_state {int hardware; } ;
struct pp_hwmgr {struct pp_power_state* request_ps; } ;
struct TYPE_2__ {int memory_clock; } ;


 int EINVAL ;
 struct smu7_power_state* cast_phw_smu7_power_state (int *) ;

__attribute__((used)) static uint32_t smu7_dpm_get_mclk(struct pp_hwmgr *hwmgr, bool low)
{
 struct pp_power_state *ps;
 struct smu7_power_state *smu7_ps;

 if (hwmgr == ((void*)0))
  return -EINVAL;

 ps = hwmgr->request_ps;

 if (ps == ((void*)0))
  return -EINVAL;

 smu7_ps = cast_phw_smu7_power_state(&ps->hardware);

 if (low)
  return smu7_ps->performance_levels[0].memory_clock;
 else
  return smu7_ps->performance_levels
    [smu7_ps->performance_level_count-1].memory_clock;
}
