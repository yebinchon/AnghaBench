
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_3__ {int value; int offset; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int REG_A5XX_RBBM_CLOCK_CNTL ;
 int REG_A5XX_RBBM_CLOCK_DELAY_GPMU ;
 int REG_A5XX_RBBM_CLOCK_HYST_GPMU ;
 int REG_A5XX_RBBM_ISDB_CNT ;
 TYPE_1__* a5xx_hwcg ;
 scalar_t__ adreno_is_a540 (struct adreno_gpu*) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

void a5xx_set_hwcg(struct msm_gpu *gpu, bool state)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(a5xx_hwcg); i++)
  gpu_write(gpu, a5xx_hwcg[i].offset,
   state ? a5xx_hwcg[i].value : 0);

 if (adreno_is_a540(adreno_gpu)) {
  gpu_write(gpu, REG_A5XX_RBBM_CLOCK_DELAY_GPMU, state ? 0x00000770 : 0);
  gpu_write(gpu, REG_A5XX_RBBM_CLOCK_HYST_GPMU, state ? 0x00000004 : 0);
 }

 gpu_write(gpu, REG_A5XX_RBBM_CLOCK_CNTL, state ? 0xAAA8AA00 : 0);
 gpu_write(gpu, REG_A5XX_RBBM_ISDB_CNT, state ? 0x182 : 0x180);
}
