
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ci_mc_reg_entry {int * mc_data; } ;
struct TYPE_3__ {int * value; } ;
typedef TYPE_1__ SMU7_Discrete_MCRegisterSet ;


 int PP_HOST_TO_SMC_UL (int ) ;

__attribute__((used)) static void ci_convert_mc_registers(
 const struct ci_mc_reg_entry *entry,
 SMU7_Discrete_MCRegisterSet *data,
 uint32_t num_entries, uint32_t valid_flag)
{
 uint32_t i, j;

 for (i = 0, j = 0; j < num_entries; j++) {
  if (valid_flag & 1<<j) {
   data->value[i] = PP_HOST_TO_SMC_UL(entry->mc_data[j]);
   i++;
  }
 }
}
