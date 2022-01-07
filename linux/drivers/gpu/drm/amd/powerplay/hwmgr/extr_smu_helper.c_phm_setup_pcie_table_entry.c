
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct vi_dpm_table {TYPE_1__* dpm_level; } ;
struct TYPE_2__ {size_t value; size_t param1; int enabled; } ;



void phm_setup_pcie_table_entry(
 void *table,
 uint32_t index, uint32_t pcie_gen,
 uint32_t pcie_lanes)
{
 struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
 dpm_table->dpm_level[index].value = pcie_gen;
 dpm_table->dpm_level[index].param1 = pcie_lanes;
 dpm_table->dpm_level[index].enabled = 1;
}
