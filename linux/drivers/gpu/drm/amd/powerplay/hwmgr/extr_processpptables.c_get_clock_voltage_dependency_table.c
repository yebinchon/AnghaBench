
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct phm_clock_voltage_dependency_table {unsigned long count; TYPE_1__* entries; } ;
struct TYPE_7__ {int ucNumEntries; TYPE_2__* entries; } ;
struct TYPE_6__ {int usVoltage; int usClockLow; scalar_t__ ucClockHigh; } ;
struct TYPE_5__ {unsigned long clk; unsigned long v; } ;
typedef TYPE_3__ ATOM_PPLIB_Clock_Voltage_Dependency_Table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct phm_clock_voltage_dependency_table* kzalloc (unsigned long,int ) ;
 unsigned long le16_to_cpu (int ) ;

__attribute__((used)) static int get_clock_voltage_dependency_table(struct pp_hwmgr *hwmgr,
  struct phm_clock_voltage_dependency_table **ptable,
  const ATOM_PPLIB_Clock_Voltage_Dependency_Table *table)
{

 unsigned long table_size, i;
 struct phm_clock_voltage_dependency_table *dep_table;

 table_size = sizeof(unsigned long) +
  sizeof(struct phm_clock_voltage_dependency_table)
  * table->ucNumEntries;

 dep_table = kzalloc(table_size, GFP_KERNEL);
 if (((void*)0) == dep_table)
  return -ENOMEM;

 dep_table->count = (unsigned long)table->ucNumEntries;

 for (i = 0; i < dep_table->count; i++) {
  dep_table->entries[i].clk =
   ((unsigned long)table->entries[i].ucClockHigh << 16) |
   le16_to_cpu(table->entries[i].usClockLow);
  dep_table->entries[i].v =
   (unsigned long)le16_to_cpu(table->entries[i].usVoltage);
 }

 *ptable = dep_table;

 return 0;
}
