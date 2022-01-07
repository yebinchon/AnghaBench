
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vega20_single_dpm_table {int count; TYPE_1__* dpm_levels; } ;
struct smu_context {int dummy; } ;
struct TYPE_2__ {int value; int enabled; } ;
typedef int PPCLK_e ;


 int EINVAL ;
 int SMU_MSG_GetDpmFreqByIndex ;
 int pr_err (char*) ;
 int smu_read_smc_arg (struct smu_context*,int*) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

__attribute__((used)) static int
vega20_set_single_dpm_table(struct smu_context *smu,
       struct vega20_single_dpm_table *single_dpm_table,
       PPCLK_e clk_id)
{
 int ret = 0;
 uint32_t i, num_of_levels = 0, clk;

 ret = smu_send_smc_msg_with_param(smu,
   SMU_MSG_GetDpmFreqByIndex,
   (clk_id << 16 | 0xFF));
 if (ret) {
  pr_err("[GetNumOfDpmLevel] failed to get dpm levels!");
  return ret;
 }

 smu_read_smc_arg(smu, &num_of_levels);
 if (!num_of_levels) {
  pr_err("[GetNumOfDpmLevel] number of clk levels is invalid!");
  return -EINVAL;
 }

 single_dpm_table->count = num_of_levels;

 for (i = 0; i < num_of_levels; i++) {
  ret = smu_send_smc_msg_with_param(smu,
    SMU_MSG_GetDpmFreqByIndex,
    (clk_id << 16 | i));
  if (ret) {
   pr_err("[GetDpmFreqByIndex] failed to get dpm freq by index!");
   return ret;
  }
  smu_read_smc_arg(smu, &clk);
  if (!clk) {
   pr_err("[GetDpmFreqByIndex] clk value is invalid!");
   return -EINVAL;
  }
  single_dpm_table->dpm_levels[i].value = clk;
  single_dpm_table->dpm_levels[i].enabled = 1;
 }
 return 0;
}
