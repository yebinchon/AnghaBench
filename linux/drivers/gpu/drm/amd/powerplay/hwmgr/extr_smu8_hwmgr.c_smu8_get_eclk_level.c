
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {struct phm_vce_clock_voltage_dependency_table* vce_clock_voltage_dependency_table; } ;
struct pp_hwmgr {TYPE_1__ dyn_state; } ;
struct phm_vce_clock_voltage_dependency_table {TYPE_2__* entries; scalar_t__ count; } ;
struct TYPE_4__ {int ecclk; } ;







__attribute__((used)) static uint32_t smu8_get_eclk_level(struct pp_hwmgr *hwmgr,
     uint32_t clock, uint32_t msg)
{
 int i = 0;
 struct phm_vce_clock_voltage_dependency_table *ptable =
  hwmgr->dyn_state.vce_clock_voltage_dependency_table;

 switch (msg) {
 case 128:
 case 130:
  for (i = 0; i < (int)ptable->count; i++) {
   if (clock <= ptable->entries[i].ecclk)
    break;
  }
  break;

 case 129:
 case 131:
  for (i = ptable->count - 1; i >= 0; i--) {
   if (clock >= ptable->entries[i].ecclk)
    break;
  }
  break;

 default:
  break;
 }

 return i;
}
