
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct phm_uvd_clock_voltage_dependency_table {int count; TYPE_2__* entries; } ;
struct TYPE_10__ {TYPE_4__* entries; } ;
typedef TYPE_3__ UVDClockInfoArray ;
struct TYPE_11__ {int usDClkLow; scalar_t__ ucDClkHigh; int usVClkLow; scalar_t__ ucVClkHigh; } ;
typedef TYPE_4__ UVDClockInfo ;
struct TYPE_12__ {int numEntries; TYPE_1__* entries; } ;
struct TYPE_9__ {unsigned long v; unsigned long vclk; unsigned long dclk; } ;
struct TYPE_8__ {size_t ucUVDClockInfoIndex; int usVoltage; } ;
typedef TYPE_5__ ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct phm_uvd_clock_voltage_dependency_table* kzalloc (unsigned long,int ) ;
 unsigned long le16_to_cpu (int ) ;

__attribute__((used)) static int get_uvd_clock_voltage_limit_table(struct pp_hwmgr *hwmgr,
  struct phm_uvd_clock_voltage_dependency_table **ptable,
  const ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table *table,
  const UVDClockInfoArray *array)
{
 unsigned long table_size, i;
 struct phm_uvd_clock_voltage_dependency_table *uvd_table;

 table_size = sizeof(unsigned long) +
   sizeof(struct phm_uvd_clock_voltage_dependency_table) *
   table->numEntries;

 uvd_table = kzalloc(table_size, GFP_KERNEL);
 if (((void*)0) == uvd_table)
  return -ENOMEM;

 uvd_table->count = table->numEntries;

 for (i = 0; i < table->numEntries; i++) {
  const UVDClockInfo *entry =
   &array->entries[table->entries[i].ucUVDClockInfoIndex];
  uvd_table->entries[i].v = (unsigned long)le16_to_cpu(table->entries[i].usVoltage);
  uvd_table->entries[i].vclk = ((unsigned long)entry->ucVClkHigh << 16)
      | le16_to_cpu(entry->usVClkLow);
  uvd_table->entries[i].dclk = ((unsigned long)entry->ucDClkHigh << 16)
      | le16_to_cpu(entry->usDClkLow);
 }

 *ptable = uvd_table;

 return 0;
}
