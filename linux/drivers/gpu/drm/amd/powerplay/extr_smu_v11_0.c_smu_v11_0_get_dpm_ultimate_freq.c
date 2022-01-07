
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int mutex; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;


 int EINVAL ;
 int SMU_MSG_GetMaxDpmFreq ;
 int SMU_MSG_GetMinDpmFreq ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_clk_get_index (struct smu_context*,int) ;
 int smu_read_smc_arg (struct smu_context*,int*) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

__attribute__((used)) static int smu_v11_0_get_dpm_ultimate_freq(struct smu_context *smu, enum smu_clk_type clk_type,
       uint32_t *min, uint32_t *max)
{
 int ret = 0, clk_id = 0;
 uint32_t param = 0;

 mutex_lock(&smu->mutex);
 clk_id = smu_clk_get_index(smu, clk_type);
 if (clk_id < 0) {
  ret = -EINVAL;
  goto failed;
 }
 param = (clk_id & 0xffff) << 16;

 if (max) {
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_GetMaxDpmFreq, param);
  if (ret)
   goto failed;
  ret = smu_read_smc_arg(smu, max);
  if (ret)
   goto failed;
 }

 if (min) {
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_GetMinDpmFreq, param);
  if (ret)
   goto failed;
  ret = smu_read_smc_arg(smu, min);
  if (ret)
   goto failed;
 }

failed:
 mutex_unlock(&smu->mutex);
 return ret;
}
