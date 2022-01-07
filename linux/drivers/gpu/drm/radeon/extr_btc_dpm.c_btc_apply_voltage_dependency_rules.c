
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct radeon_clock_voltage_dependency_table {scalar_t__ count; TYPE_1__* entries; } ;
struct TYPE_2__ {size_t clk; scalar_t__ v; } ;



void btc_apply_voltage_dependency_rules(struct radeon_clock_voltage_dependency_table *table,
     u32 clock, u16 max_voltage, u16 *voltage)
{
 u32 i;

 if ((table == ((void*)0)) || (table->count == 0))
  return;

 for (i= 0; i < table->count; i++) {
  if (clock <= table->entries[i].clk) {
   if (*voltage < table->entries[i].v)
    *voltage = (u16)((table->entries[i].v < max_voltage) ?
        table->entries[i].v : max_voltage);
   return;
  }
 }

 *voltage = (*voltage > max_voltage) ? *voltage : max_voltage;
}
