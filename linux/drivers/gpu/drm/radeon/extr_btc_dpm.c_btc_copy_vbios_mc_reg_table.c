
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct evergreen_mc_reg_table {size_t last; size_t num_entries; TYPE_3__* mc_reg_table_entry; TYPE_1__* mc_reg_address; } ;
struct atom_mc_reg_table {scalar_t__ last; size_t num_entries; TYPE_4__* mc_reg_table_entry; TYPE_2__* mc_reg_address; } ;
struct TYPE_8__ {int * mc_data; int mclk_max; } ;
struct TYPE_7__ {int * mc_data; int mclk_max; } ;
struct TYPE_6__ {int s1; } ;
struct TYPE_5__ {int s1; } ;


 int EINVAL ;
 size_t MAX_AC_TIMING_ENTRIES ;
 scalar_t__ SMC_EVERGREEN_MC_REGISTER_ARRAY_SIZE ;

__attribute__((used)) static int btc_copy_vbios_mc_reg_table(struct atom_mc_reg_table *table,
           struct evergreen_mc_reg_table *eg_table)
{
 u8 i, j;

 if (table->last > SMC_EVERGREEN_MC_REGISTER_ARRAY_SIZE)
  return -EINVAL;

 if (table->num_entries > MAX_AC_TIMING_ENTRIES)
  return -EINVAL;

 for (i = 0; i < table->last; i++)
  eg_table->mc_reg_address[i].s1 = table->mc_reg_address[i].s1;
 eg_table->last = table->last;

 for (i = 0; i < table->num_entries; i++) {
  eg_table->mc_reg_table_entry[i].mclk_max =
   table->mc_reg_table_entry[i].mclk_max;
  for(j = 0; j < table->last; j++)
   eg_table->mc_reg_table_entry[i].mc_data[j] =
    table->mc_reg_table_entry[i].mc_data[j];
 }
 eg_table->num_entries = table->num_entries;

 return 0;
}
