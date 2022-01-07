
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct smu8_power_state {int level; TYPE_1__* levels; } ;
struct pp_power_state {int hardware; } ;
struct pp_hwmgr {struct pp_power_state* request_ps; } ;
struct TYPE_2__ {int engineClock; } ;


 int EINVAL ;
 struct smu8_power_state* cast_smu8_power_state (int *) ;

__attribute__((used)) static uint32_t smu8_dpm_get_sclk(struct pp_hwmgr *hwmgr, bool low)
{
 struct pp_power_state *ps;
 struct smu8_power_state *smu8_ps;

 if (hwmgr == ((void*)0))
  return -EINVAL;

 ps = hwmgr->request_ps;

 if (ps == ((void*)0))
  return -EINVAL;

 smu8_ps = cast_smu8_power_state(&ps->hardware);

 if (low)
  return smu8_ps->levels[0].engineClock;
 else
  return smu8_ps->levels[smu8_ps->level-1].engineClock;
}
