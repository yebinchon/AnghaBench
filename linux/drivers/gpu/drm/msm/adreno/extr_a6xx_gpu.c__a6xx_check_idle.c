
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int gmu; } ;


 int A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT ;
 int A6XX_RBBM_STATUS_CP_AHB_BUSY_CX_MASTER ;
 int REG_A6XX_RBBM_INT_0_STATUS ;
 int REG_A6XX_RBBM_STATUS ;
 int a6xx_gmu_isidle (int *) ;
 int gpu_read (struct msm_gpu*,int ) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static inline bool _a6xx_check_idle(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);


 if (!a6xx_gmu_isidle(&a6xx_gpu->gmu))
  return 0;


 if (gpu_read(gpu, REG_A6XX_RBBM_STATUS) &
   ~A6XX_RBBM_STATUS_CP_AHB_BUSY_CX_MASTER)
  return 0;

 return !(gpu_read(gpu, REG_A6XX_RBBM_INT_0_STATUS) &
  A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT);
}
