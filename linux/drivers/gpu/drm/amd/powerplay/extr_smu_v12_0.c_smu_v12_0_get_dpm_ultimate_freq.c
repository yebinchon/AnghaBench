
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int mutex; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;


 int EINVAL ;

 int SMU_MSG_GetMaxGfxclkFrequency ;
 int SMU_MSG_GetMinGfxclkFrequency ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int smu_get_dpm_uclk_limited (struct smu_context*,int *,int) ;
 int smu_read_smc_arg (struct smu_context*,int *) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

__attribute__((used)) static int smu_v12_0_get_dpm_ultimate_freq(struct smu_context *smu, enum smu_clk_type clk_type,
       uint32_t *min, uint32_t *max)
{
 int ret = 0;

 mutex_lock(&smu->mutex);

 if (max) {
  switch (clk_type) {
  case 130:
  case 129:
   ret = smu_send_smc_msg(smu, SMU_MSG_GetMaxGfxclkFrequency);
   if (ret) {
    pr_err("Attempt to get max GX frequency from SMC Failed !\n");
    goto failed;
   }
   ret = smu_read_smc_arg(smu, max);
   if (ret)
    goto failed;
   break;
  case 128:
   ret = smu_get_dpm_uclk_limited(smu, max, 1);
   if (ret)
    goto failed;
   break;
  default:
   ret = -EINVAL;
   goto failed;

  }
 }

 if (min) {
  switch (clk_type) {
  case 130:
  case 129:
   ret = smu_send_smc_msg(smu, SMU_MSG_GetMinGfxclkFrequency);
   if (ret) {
    pr_err("Attempt to get min GX frequency from SMC Failed !\n");
    goto failed;
   }
   ret = smu_read_smc_arg(smu, min);
   if (ret)
    goto failed;
   break;
  case 128:
   ret = smu_get_dpm_uclk_limited(smu, min, 0);
   if (ret)
    goto failed;
   break;
  default:
   ret = -EINVAL;
   goto failed;
  }

 }
failed:
 mutex_unlock(&smu->mutex);
 return ret;
}
