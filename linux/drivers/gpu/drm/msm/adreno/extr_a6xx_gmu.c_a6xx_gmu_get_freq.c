
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gmu {unsigned long freq; } ;
struct a6xx_gpu {struct a6xx_gmu gmu; } ;


 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

unsigned long a6xx_gmu_get_freq(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
 struct a6xx_gmu *gmu = &a6xx_gpu->gmu;

 return gmu->freq;
}
