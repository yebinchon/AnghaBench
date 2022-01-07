
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int gmu; } ;


 int GMU_OOB_GPU_SET ;
 int REG_A6XX_RBBM_PERFCTR_CP_0_HI ;
 int REG_A6XX_RBBM_PERFCTR_CP_0_LO ;
 int a6xx_gmu_clear_oob (int *,int ) ;
 int a6xx_gmu_set_oob (int *,int ) ;
 int gpu_read64 (struct msm_gpu*,int ,int ) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a6xx_get_timestamp(struct msm_gpu *gpu, uint64_t *value)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);


 a6xx_gmu_set_oob(&a6xx_gpu->gmu, GMU_OOB_GPU_SET);

 *value = gpu_read64(gpu, REG_A6XX_RBBM_PERFCTR_CP_0_LO,
  REG_A6XX_RBBM_PERFCTR_CP_0_HI);

 a6xx_gmu_clear_oob(&a6xx_gpu->gmu, GMU_OOB_GPU_SET);
 return 0;
}
