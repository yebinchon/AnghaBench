
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct atom_voltage_table {unsigned int count; int * entries; } ;


 unsigned int MAX_NO_VREG_STEPS ;

__attribute__((used)) static void cypress_trim_voltage_table_to_fit_state_table(struct radeon_device *rdev,
         struct atom_voltage_table *voltage_table)
{
 unsigned int i, diff;

 if (voltage_table->count <= MAX_NO_VREG_STEPS)
  return;

 diff = voltage_table->count - MAX_NO_VREG_STEPS;

 for (i= 0; i < MAX_NO_VREG_STEPS; i++)
  voltage_table->entries[i] = voltage_table->entries[i + diff];

 voltage_table->count = MAX_NO_VREG_STEPS;
}
