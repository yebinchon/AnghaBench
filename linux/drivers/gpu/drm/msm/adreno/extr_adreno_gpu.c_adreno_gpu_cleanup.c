
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {int icc_path; } ;
struct adreno_gpu {struct msm_gpu base; int * fw; TYPE_1__* info; } ;
struct TYPE_2__ {int fw; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int icc_put (int ) ;
 int msm_gpu_cleanup (struct msm_gpu*) ;
 int release_firmware (int ) ;

void adreno_gpu_cleanup(struct adreno_gpu *adreno_gpu)
{
 struct msm_gpu *gpu = &adreno_gpu->base;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(adreno_gpu->info->fw); i++)
  release_firmware(adreno_gpu->fw[i]);

 icc_put(gpu->icc_path);

 msm_gpu_cleanup(&adreno_gpu->base);
}
