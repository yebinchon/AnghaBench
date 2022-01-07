
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct phm_clock_voltage_dependency_table {int count; TYPE_1__* entries; } ;
struct phm_clock_array {unsigned long count; unsigned long* values; } ;
struct TYPE_2__ {scalar_t__ clk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct phm_clock_array* kzalloc (unsigned long,int ) ;

__attribute__((used)) static int get_valid_clk(struct pp_hwmgr *hwmgr,
   struct phm_clock_array **ptable,
   const struct phm_clock_voltage_dependency_table *table)
{
 unsigned long table_size, i;
 struct phm_clock_array *clock_table;

 table_size = sizeof(unsigned long) + sizeof(unsigned long) * table->count;
 clock_table = kzalloc(table_size, GFP_KERNEL);
 if (((void*)0) == clock_table)
  return -ENOMEM;

 clock_table->count = (unsigned long)table->count;

 for (i = 0; i < clock_table->count; i++)
  clock_table->values[i] = (unsigned long)table->entries[i].clk;

 *ptable = clock_table;

 return 0;
}
