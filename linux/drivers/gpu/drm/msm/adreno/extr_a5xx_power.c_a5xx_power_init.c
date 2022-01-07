
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;


 int a530_lm_setup (struct msm_gpu*) ;
 int a540_lm_setup (struct msm_gpu*) ;
 int a5xx_gpmu_init (struct msm_gpu*) ;
 int a5xx_lm_enable (struct msm_gpu*) ;
 int a5xx_pc_init (struct msm_gpu*) ;
 scalar_t__ adreno_is_a530 (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

int a5xx_power_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 int ret;


 if (adreno_is_a530(adreno_gpu))
  a530_lm_setup(gpu);
 else
  a540_lm_setup(gpu);


 a5xx_pc_init(gpu);


 ret = a5xx_gpmu_init(gpu);
 if (ret)
  return ret;


 a5xx_lm_enable(gpu);

 return 0;
}
