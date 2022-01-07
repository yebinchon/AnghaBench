
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int smu10_init_power_gate_state (struct pp_hwmgr*) ;

__attribute__((used)) static int smu10_setup_asic_task(struct pp_hwmgr *hwmgr)
{
 return smu10_init_power_gate_state(hwmgr);
}
