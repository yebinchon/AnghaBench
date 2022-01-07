
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct radeon_device {int dummy; } ;
struct atom_voltage_table {unsigned int count; int * entries; } ;



void si_trim_voltage_table_to_fit_state_table(struct radeon_device *rdev,
           u32 max_voltage_steps,
           struct atom_voltage_table *voltage_table)
{
 unsigned int i, diff;

 if (voltage_table->count <= max_voltage_steps)
  return;

 diff = voltage_table->count - max_voltage_steps;

 for (i= 0; i < max_voltage_steps; i++)
  voltage_table->entries[i] = voltage_table->entries[i + diff];

 voltage_table->count = max_voltage_steps;
}
