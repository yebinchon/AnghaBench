
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int name; } ;
struct adreno_gpu {int dummy; } ;
struct a2xx_gpu {int dummy; } ;


 int DBG (char*,int ) ;
 int adreno_gpu_cleanup (struct adreno_gpu*) ;
 int kfree (struct a2xx_gpu*) ;
 struct a2xx_gpu* to_a2xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a2xx_destroy(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a2xx_gpu *a2xx_gpu = to_a2xx_gpu(adreno_gpu);

 DBG("%s", gpu->name);

 adreno_gpu_cleanup(adreno_gpu);

 kfree(a2xx_gpu);
}
