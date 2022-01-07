
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {struct phm_clock_voltage_dependency_table* vddc_dependency_on_sclk; } ;
struct pp_hwmgr {TYPE_1__ dyn_state; } ;
struct phm_clock_voltage_dependency_table {TYPE_2__* entries; scalar_t__ count; } ;
struct TYPE_4__ {int clk; } ;







__attribute__((used)) static uint32_t smu8_get_sclk_level(struct pp_hwmgr *hwmgr,
    uint32_t clock, uint32_t msg)
{
 int i = 0;
 struct phm_clock_voltage_dependency_table *table =
    hwmgr->dyn_state.vddc_dependency_on_sclk;

 switch (msg) {
 case 128:
 case 130:
  for (i = 0; i < (int)table->count; i++) {
   if (clock <= table->entries[i].clk)
    break;
  }
  break;

 case 129:
 case 131:
  for (i = table->count - 1; i >= 0; i--) {
   if (clock >= table->entries[i].clk)
    break;
  }
  break;

 default:
  break;
 }
 return i;
}
