
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devfreq; } ;
struct msm_gpu {TYPE_1__ devfreq; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int dummy; } ;


 int a6xx_gmu_stop (struct a6xx_gpu*) ;
 int devfreq_suspend_device (int ) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a6xx_pm_suspend(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);

 devfreq_suspend_device(gpu->devfreq.devfreq);

 return a6xx_gmu_stop(a6xx_gpu);
}
