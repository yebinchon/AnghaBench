
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct msm_gpu {int fast_rate; } ;
struct TYPE_2__ {int patchid; } ;
struct adreno_gpu {TYPE_1__ rev; } ;


 int AGC_INIT_MSG_MAGIC ;
 int AGC_INIT_MSG_VALUE ;
 int AGC_LEVEL_CONFIG ;
 int AGC_LM_CONFIG ;
 int AGC_LM_CONFIG_BCL_DISABLED ;
 int AGC_LM_CONFIG_GPU_VERSION_SHIFT ;
 int AGC_LM_CONFIG_THROTTLE_DISABLE ;
 int AGC_MSG_COMMAND ;
 int AGC_MSG_PAYLOAD (int) ;
 int AGC_MSG_PAYLOAD_SIZE ;
 int AGC_MSG_STATE ;
 int AGC_POWER_CONFIG_PRODUCTION_ID ;
 int LEVEL_CONFIG ;
 int PAYLOAD_SIZE (int) ;
 int REG_A5XX_GPMU_GPMU_PWR_THRESHOLD ;
 int REG_A5XX_GPMU_GPMU_VOLTAGE ;
 int _get_mvolts (struct msm_gpu*,int) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a540_lm_setup(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 u32 config;


 config = AGC_LM_CONFIG_BCL_DISABLED;
 config |= adreno_gpu->rev.patchid << AGC_LM_CONFIG_GPU_VERSION_SHIFT;


 config |= AGC_LM_CONFIG_THROTTLE_DISABLE;


 gpu_write(gpu, REG_A5XX_GPMU_GPMU_VOLTAGE, 0x80000000 | 0);


 gpu_write(gpu, REG_A5XX_GPMU_GPMU_PWR_THRESHOLD, 0x80000000 | 6000);

 gpu_write(gpu, AGC_MSG_STATE, 0x80000001);
 gpu_write(gpu, AGC_MSG_COMMAND, AGC_POWER_CONFIG_PRODUCTION_ID);

 gpu_write(gpu, AGC_MSG_PAYLOAD(0), 5448);
 gpu_write(gpu, AGC_MSG_PAYLOAD(1), 1);

 gpu_write(gpu, AGC_MSG_PAYLOAD(2), _get_mvolts(gpu, gpu->fast_rate));
 gpu_write(gpu, AGC_MSG_PAYLOAD(3), gpu->fast_rate / 1000000);

 gpu_write(gpu, AGC_MSG_PAYLOAD(AGC_LM_CONFIG), config);
 gpu_write(gpu, AGC_MSG_PAYLOAD(AGC_LEVEL_CONFIG), LEVEL_CONFIG);
 gpu_write(gpu, AGC_MSG_PAYLOAD_SIZE,
 PAYLOAD_SIZE(AGC_LEVEL_CONFIG + 1));

 gpu_write(gpu, AGC_INIT_MSG_MAGIC, AGC_INIT_MSG_VALUE);
}
