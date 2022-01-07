
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_gpu {int fast_rate; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int lm_leakage; } ;
struct TYPE_3__ {int value; int reg; } ;


 int AGC_INIT_MSG_MAGIC ;
 int AGC_INIT_MSG_VALUE ;
 int AGC_MSG_COMMAND ;
 int AGC_MSG_PAYLOAD (int) ;
 int AGC_MSG_PAYLOAD_SIZE ;
 int AGC_MSG_STATE ;
 int AGC_POWER_CONFIG_PRODUCTION_ID ;
 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int REG_A5XX_GDPM_CONFIG1 ;
 int REG_A5XX_GPMU_BASE_LEAKAGE ;
 int REG_A5XX_GPMU_BEC_ENABLE ;
 int REG_A5XX_GPMU_DELTA_TEMP_THRESHOLD ;
 int REG_A5XX_GPMU_GPMU_PWR_THRESHOLD ;
 int REG_A5XX_GPMU_GPMU_VOLTAGE ;
 int REG_A5XX_GPMU_TEMP_SENSOR_CONFIG ;
 int REG_A5XX_GPMU_TEMP_SENSOR_ID ;
 int _get_mvolts (struct msm_gpu*,int) ;
 TYPE_1__* a5xx_sequence_regs ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a530_lm_setup(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 unsigned int i;


 for (i = 0; i < ARRAY_SIZE(a5xx_sequence_regs); i++)
  gpu_write(gpu, a5xx_sequence_regs[i].reg,
   a5xx_sequence_regs[i].value);


 gpu_write(gpu, REG_A5XX_GPMU_TEMP_SENSOR_ID, 0x60007);
 gpu_write(gpu, REG_A5XX_GPMU_DELTA_TEMP_THRESHOLD, 0x01);
 gpu_write(gpu, REG_A5XX_GPMU_TEMP_SENSOR_CONFIG, 0x01);


 gpu_write(gpu, REG_A5XX_GPMU_GPMU_VOLTAGE, 0x80000000 | 0);

 gpu_write(gpu, REG_A5XX_GPMU_BASE_LEAKAGE, a5xx_gpu->lm_leakage);


 gpu_write(gpu, REG_A5XX_GPMU_GPMU_PWR_THRESHOLD, 0x80000000 | 6000);

 gpu_write(gpu, REG_A5XX_GPMU_BEC_ENABLE, 0x10001FFF);
 gpu_write(gpu, REG_A5XX_GDPM_CONFIG1, 0x00201FF1);


 gpu_write(gpu, REG_A5XX_GPMU_BEC_ENABLE, 0x10001FFF);
 gpu_write(gpu, REG_A5XX_GDPM_CONFIG1, 0x201FF1);

 gpu_write(gpu, AGC_MSG_STATE, 1);
 gpu_write(gpu, AGC_MSG_COMMAND, AGC_POWER_CONFIG_PRODUCTION_ID);


 gpu_write(gpu, AGC_MSG_PAYLOAD(0), 5448);
 gpu_write(gpu, AGC_MSG_PAYLOAD(1), 1);





 gpu_write(gpu, AGC_MSG_PAYLOAD(2), _get_mvolts(gpu, gpu->fast_rate));
 gpu_write(gpu, AGC_MSG_PAYLOAD(3), gpu->fast_rate / 1000000);

 gpu_write(gpu, AGC_MSG_PAYLOAD_SIZE, 4 * sizeof(uint32_t));
 gpu_write(gpu, AGC_INIT_MSG_MAGIC, AGC_INIT_MSG_VALUE);
}
