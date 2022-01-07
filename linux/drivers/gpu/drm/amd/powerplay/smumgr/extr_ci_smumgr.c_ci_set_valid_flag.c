
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ci_mc_reg_table {int last; int num_entries; int validflag; TYPE_1__* mc_reg_table_entry; } ;
struct TYPE_2__ {scalar_t__* mc_data; } ;



__attribute__((used)) static int ci_set_valid_flag(struct ci_mc_reg_table *table)
{
 uint8_t i, j;

 for (i = 0; i < table->last; i++) {
  for (j = 1; j < table->num_entries; j++) {
   if (table->mc_reg_table_entry[j-1].mc_data[i] !=
    table->mc_reg_table_entry[j].mc_data[i]) {
    table->validflag |= (1 << i);
    break;
   }
  }
 }

 return 0;
}
