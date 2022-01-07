
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {int dummy; } ;
struct TYPE_2__ {int patchid; } ;
struct adreno_gpu {TYPE_1__ rev; } ;


 int REG_A4XX_RBBM_CLOCK_CTL ;
 int REG_A4XX_RBBM_CLOCK_CTL2 ;
 int REG_A4XX_RBBM_CLOCK_CTL2_RB (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_CTL2_SP (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_CTL2_TP (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_CTL2_UCHE ;
 int REG_A4XX_RBBM_CLOCK_CTL3_UCHE ;
 int REG_A4XX_RBBM_CLOCK_CTL4_UCHE ;
 int REG_A4XX_RBBM_CLOCK_CTL_COM_DCOM ;
 int REG_A4XX_RBBM_CLOCK_CTL_HLSQ ;
 int REG_A4XX_RBBM_CLOCK_CTL_MARB_CCU (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_CTL_RB (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_CTL_SP (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_CTL_TP (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_CTL_TSE_RAS_RBBM ;
 int REG_A4XX_RBBM_CLOCK_CTL_UCHE ;
 int REG_A4XX_RBBM_CLOCK_DELAY_COM_DCOM ;
 int REG_A4XX_RBBM_CLOCK_DELAY_GPC ;
 int REG_A4XX_RBBM_CLOCK_DELAY_HLSQ ;
 int REG_A4XX_RBBM_CLOCK_DELAY_RB_MARB_CCU_L1 (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_DELAY_SP (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_DELAY_TP (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_DELAY_TSE_RAS_RBBM ;
 int REG_A4XX_RBBM_CLOCK_DELAY_UCHE ;
 int REG_A4XX_RBBM_CLOCK_HYST_COM_DCOM ;
 int REG_A4XX_RBBM_CLOCK_HYST_GPC ;
 int REG_A4XX_RBBM_CLOCK_HYST_HLSQ ;
 int REG_A4XX_RBBM_CLOCK_HYST_RB_MARB_CCU (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_HYST_SP (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_HYST_TP (unsigned int) ;
 int REG_A4XX_RBBM_CLOCK_HYST_TSE_RAS_RBBM ;
 int REG_A4XX_RBBM_CLOCK_HYST_UCHE ;
 int REG_A4XX_RBBM_CLOCK_MODE_GPC ;
 scalar_t__ adreno_is_a420 (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a430 (struct adreno_gpu*) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a4xx_enable_hwcg(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 unsigned int i;
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL_TP(i), 0x02222202);
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL2_TP(i), 0x00002222);
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_HYST_TP(i), 0x0E739CE7);
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_DELAY_TP(i), 0x00111111);
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL_SP(i), 0x22222222);
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL2_SP(i), 0x00222222);
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_HYST_SP(i), 0x00000104);
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_DELAY_SP(i), 0x00000081);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL_UCHE, 0x22222222);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL2_UCHE, 0x02222222);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL3_UCHE, 0x00000000);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL4_UCHE, 0x00000000);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_HYST_UCHE, 0x00004444);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_DELAY_UCHE, 0x00001112);
 for (i = 0; i < 4; i++)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL_RB(i), 0x22222222);


 for (i = 0; i < 4; i++) {
  if (adreno_is_a420(adreno_gpu)) {
   gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL2_RB(i),
     0x00002020);
  } else {
   gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL2_RB(i),
     0x00022020);
  }
 }

 for (i = 0; i < 4; i++) {
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL_MARB_CCU(i),
    0x00000922);
 }

 for (i = 0; i < 4; i++) {
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_HYST_RB_MARB_CCU(i),
    0x00000000);
 }

 for (i = 0; i < 4; i++) {
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_DELAY_RB_MARB_CCU_L1(i),
    0x00000001);
 }

 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_MODE_GPC, 0x02222222);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_HYST_GPC, 0x04100104);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_DELAY_GPC, 0x00022222);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL_COM_DCOM, 0x00000022);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_HYST_COM_DCOM, 0x0000010F);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_DELAY_COM_DCOM, 0x00000022);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL_TSE_RAS_RBBM, 0x00222222);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_HYST_TSE_RAS_RBBM, 0x00004104);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_DELAY_TSE_RAS_RBBM, 0x00000222);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL_HLSQ , 0x00000000);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_HYST_HLSQ, 0x00000000);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_DELAY_HLSQ, 0x00220000);


 if (adreno_is_a430(adreno_gpu) && adreno_gpu->rev.patchid < 2)
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL, 0);
 else
  gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL, 0xAAAAAAAA);
 gpu_write(gpu, REG_A4XX_RBBM_CLOCK_CTL2, 0);
}
