
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int name; } ;
struct adreno_gpu {int dummy; } ;
struct a3xx_gpu {int ocmem_hdl; scalar_t__ ocmem_base; } ;


 int DBG (char*,int ) ;
 int OCMEM_GRAPHICS ;
 int adreno_gpu_cleanup (struct adreno_gpu*) ;
 int kfree (struct a3xx_gpu*) ;
 int ocmem_free (int ,int ) ;
 struct a3xx_gpu* to_a3xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a3xx_destroy(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a3xx_gpu *a3xx_gpu = to_a3xx_gpu(adreno_gpu);

 DBG("%s", gpu->name);

 adreno_gpu_cleanup(adreno_gpu);






 kfree(a3xx_gpu);
}
