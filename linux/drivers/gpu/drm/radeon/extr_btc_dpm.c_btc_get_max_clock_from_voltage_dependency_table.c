
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_clock_voltage_dependency_table {scalar_t__ count; TYPE_1__* entries; } ;
struct TYPE_2__ {size_t clk; } ;



void btc_get_max_clock_from_voltage_dependency_table(struct radeon_clock_voltage_dependency_table *table,
           u32 *max_clock)
{
 u32 i, clock = 0;

 if ((table == ((void*)0)) || (table->count == 0)) {
  *max_clock = clock;
  return;
 }

 for (i = 0; i < table->count; i++) {
  if (clock < table->entries[i].clk)
   clock = table->entries[i].clk;
 }
 *max_clock = clock;
}
