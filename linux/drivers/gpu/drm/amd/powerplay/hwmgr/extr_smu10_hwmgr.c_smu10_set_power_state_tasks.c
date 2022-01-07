
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int smu10_set_clock_limit (struct pp_hwmgr*,void const*) ;

__attribute__((used)) static int smu10_set_power_state_tasks(struct pp_hwmgr *hwmgr, const void *input)
{
 return smu10_set_clock_limit(hwmgr, input);
}
