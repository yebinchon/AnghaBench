
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct atom_voltage_table {unsigned int count; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ value; } ;



__attribute__((used)) static u16 btc_find_voltage(struct atom_voltage_table *table, u16 voltage)
{
 unsigned int i;

 for (i = 0; i < table->count; i++)
  if (voltage <= table->entries[i].value)
   return table->entries[i].value;

 return table->entries[table->count - 1].value;
}
