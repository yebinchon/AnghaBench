
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct phm_samu_clock_voltage_dependency_table {int count; TYPE_1__* entries; } ;
struct TYPE_7__ {int numEntries; TYPE_2__* entries; } ;
struct TYPE_6__ {int usSAMClockLow; scalar_t__ ucSAMClockHigh; int usVoltage; } ;
struct TYPE_5__ {unsigned long v; unsigned long samclk; } ;
typedef TYPE_3__ ATOM_PPLIB_SAMClk_Voltage_Limit_Table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct phm_samu_clock_voltage_dependency_table* kzalloc (unsigned long,int ) ;
 unsigned long le16_to_cpu (int ) ;

__attribute__((used)) static int get_samu_clock_voltage_limit_table(struct pp_hwmgr *hwmgr,
   struct phm_samu_clock_voltage_dependency_table **ptable,
   const ATOM_PPLIB_SAMClk_Voltage_Limit_Table *table)
{
 unsigned long table_size, i;
 struct phm_samu_clock_voltage_dependency_table *samu_table;

 table_size = sizeof(unsigned long) +
  sizeof(struct phm_samu_clock_voltage_dependency_table) *
  table->numEntries;

 samu_table = kzalloc(table_size, GFP_KERNEL);
 if (((void*)0) == samu_table)
  return -ENOMEM;

 samu_table->count = table->numEntries;

 for (i = 0; i < table->numEntries; i++) {
  samu_table->entries[i].v = (unsigned long)le16_to_cpu(table->entries[i].usVoltage);
  samu_table->entries[i].samclk = ((unsigned long)table->entries[i].ucSAMClockHigh << 16)
      | le16_to_cpu(table->entries[i].usSAMClockLow);
 }

 *ptable = samu_table;

 return 0;
}
