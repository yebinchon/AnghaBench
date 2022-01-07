
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ni_mc_reg_table {int last; int num_entries; int valid_flag; TYPE_1__* mc_reg_table_entry; } ;
struct TYPE_2__ {scalar_t__* mc_data; } ;



__attribute__((used)) static void ni_set_valid_flag(struct ni_mc_reg_table *table)
{
 u8 i, j;

 for (i = 0; i < table->last; i++) {
  for (j = 1; j < table->num_entries; j++) {
   if (table->mc_reg_table_entry[j-1].mc_data[i] != table->mc_reg_table_entry[j].mc_data[i]) {
    table->valid_flag |= 1 << i;
    break;
   }
  }
 }
}
