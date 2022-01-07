
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ci_single_dpm_table {TYPE_1__* dpm_levels; } ;
struct TYPE_2__ {size_t value; size_t param1; int enabled; } ;



__attribute__((used)) static void ci_setup_pcie_table_entry(struct ci_single_dpm_table* dpm_table,
          u32 index, u32 pcie_gen, u32 pcie_lanes)
{
 dpm_table->dpm_levels[index].value = pcie_gen;
 dpm_table->dpm_levels[index].param1 = pcie_lanes;
 dpm_table->dpm_levels[index].enabled = 1;
}
