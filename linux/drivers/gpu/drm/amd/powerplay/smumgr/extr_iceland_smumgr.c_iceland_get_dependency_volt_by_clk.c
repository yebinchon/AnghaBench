
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct pp_hwmgr {int dummy; } ;
struct phm_clock_voltage_dependency_table {scalar_t__ count; TYPE_1__* entries; } ;
struct TYPE_2__ {size_t clk; size_t v; } ;


 int EINVAL ;

__attribute__((used)) static int iceland_get_dependency_volt_by_clk(struct pp_hwmgr *hwmgr,
 struct phm_clock_voltage_dependency_table *allowed_clock_voltage_table,
 uint32_t clock, uint32_t *vol)
{
 uint32_t i = 0;


 if (allowed_clock_voltage_table->count == 0)
  return -EINVAL;

 for (i = 0; i < allowed_clock_voltage_table->count; i++) {

  if (allowed_clock_voltage_table->entries[i].clk >= clock) {
   *vol = allowed_clock_voltage_table->entries[i].v;
   return 0;
  }
 }


 *vol = allowed_clock_voltage_table->entries[i - 1].v;

 return 0;
}
