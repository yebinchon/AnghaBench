
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ni_mc_reg_entry {int * mc_data; } ;
struct TYPE_3__ {int * value; } ;
typedef TYPE_1__ SMC_NIslands_MCRegisterSet ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static void ni_convert_mc_registers(struct ni_mc_reg_entry *entry,
        SMC_NIslands_MCRegisterSet *data,
        u32 num_entries, u32 valid_flag)
{
 u32 i, j;

 for (i = 0, j = 0; j < num_entries; j++) {
  if (valid_flag & (1 << j)) {
   data->value[i] = cpu_to_be32(entry->mc_data[j]);
   i++;
  }
 }
}
