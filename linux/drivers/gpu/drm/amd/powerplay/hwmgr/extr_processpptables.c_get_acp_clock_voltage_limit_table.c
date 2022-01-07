
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct phm_acp_clock_voltage_dependency_table {unsigned long count; TYPE_1__* entries; } ;
struct TYPE_7__ {int numEntries; TYPE_2__* entries; } ;
struct TYPE_6__ {int usACPClockLow; scalar_t__ ucACPClockHigh; int usVoltage; } ;
struct TYPE_5__ {unsigned long v; unsigned long acpclk; } ;
typedef TYPE_3__ ATOM_PPLIB_ACPClk_Voltage_Limit_Table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct phm_acp_clock_voltage_dependency_table* kzalloc (unsigned int,int ) ;
 unsigned long le16_to_cpu (int ) ;

__attribute__((used)) static int get_acp_clock_voltage_limit_table(struct pp_hwmgr *hwmgr,
  struct phm_acp_clock_voltage_dependency_table **ptable,
  const ATOM_PPLIB_ACPClk_Voltage_Limit_Table *table)
{
 unsigned table_size, i;
 struct phm_acp_clock_voltage_dependency_table *acp_table;

 table_size = sizeof(unsigned long) +
  sizeof(struct phm_acp_clock_voltage_dependency_table) *
  table->numEntries;

 acp_table = kzalloc(table_size, GFP_KERNEL);
 if (((void*)0) == acp_table)
  return -ENOMEM;

 acp_table->count = (unsigned long)table->numEntries;

 for (i = 0; i < table->numEntries; i++) {
  acp_table->entries[i].v = (unsigned long)le16_to_cpu(table->entries[i].usVoltage);
  acp_table->entries[i].acpclk = ((unsigned long)table->entries[i].ucACPClockHigh << 16)
      | le16_to_cpu(table->entries[i].usACPClockLow);
 }

 *ptable = acp_table;

 return 0;
}
