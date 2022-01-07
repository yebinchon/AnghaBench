
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {int * reg_temp_config; int * reg_temp_hyst; int * reg_temp_over; int * reg_temp; } ;


 int * W83627EHF_REG_TEMP ;
 int * W83627EHF_REG_TEMP_CONFIG ;
 int * W83627EHF_REG_TEMP_HYST ;
 int * W83627EHF_REG_TEMP_OVER ;

__attribute__((used)) static void
w83627ehf_set_temp_reg_ehf(struct w83627ehf_data *data, int n_temp)
{
 int i;

 for (i = 0; i < n_temp; i++) {
  data->reg_temp[i] = W83627EHF_REG_TEMP[i];
  data->reg_temp_over[i] = W83627EHF_REG_TEMP_OVER[i];
  data->reg_temp_hyst[i] = W83627EHF_REG_TEMP_HYST[i];
  data->reg_temp_config[i] = W83627EHF_REG_TEMP_CONFIG[i];
 }
}
