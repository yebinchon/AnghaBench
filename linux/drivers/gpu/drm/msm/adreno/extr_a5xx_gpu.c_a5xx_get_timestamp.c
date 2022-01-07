
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_gpu {int dummy; } ;


 int REG_A5XX_RBBM_PERFCTR_CP_0_HI ;
 int REG_A5XX_RBBM_PERFCTR_CP_0_LO ;
 int gpu_read64 (struct msm_gpu*,int ,int ) ;

__attribute__((used)) static int a5xx_get_timestamp(struct msm_gpu *gpu, uint64_t *value)
{
 *value = gpu_read64(gpu, REG_A5XX_RBBM_PERFCTR_CP_0_LO,
  REG_A5XX_RBBM_PERFCTR_CP_0_HI);

 return 0;
}
