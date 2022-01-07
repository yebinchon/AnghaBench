
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct smu10_voltage_dependency_table {int count; TYPE_1__* entries; } ;
struct pp_hwmgr {int dummy; } ;
struct TYPE_5__ {int Freq; int Vol; } ;
struct TYPE_4__ {int clk; int vol; } ;
typedef TYPE_2__ DpmClock_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct smu10_voltage_dependency_table* kzalloc (int,int ) ;

__attribute__((used)) static int smu10_get_clock_voltage_dependency_table(struct pp_hwmgr *hwmgr,
   struct smu10_voltage_dependency_table **pptable,
   uint32_t num_entry, const DpmClock_t *pclk_dependency_table)
{
 uint32_t table_size, i;
 struct smu10_voltage_dependency_table *ptable;

 table_size = sizeof(uint32_t) + sizeof(struct smu10_voltage_dependency_table) * num_entry;
 ptable = kzalloc(table_size, GFP_KERNEL);

 if (((void*)0) == ptable)
  return -ENOMEM;

 ptable->count = num_entry;

 for (i = 0; i < ptable->count; i++) {
  ptable->entries[i].clk = pclk_dependency_table->Freq * 100;
  ptable->entries[i].vol = pclk_dependency_table->Vol;
  pclk_dependency_table++;
 }

 *pptable = ptable;

 return 0;
}
