
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int aspace; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {scalar_t__ sqe_bo; } ;


 int a6xx_gmu_remove (struct a6xx_gpu*) ;
 int adreno_gpu_cleanup (struct adreno_gpu*) ;
 int drm_gem_object_put_unlocked (scalar_t__) ;
 int kfree (struct a6xx_gpu*) ;
 int msm_gem_unpin_iova (scalar_t__,int ) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a6xx_destroy(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);

 if (a6xx_gpu->sqe_bo) {
  msm_gem_unpin_iova(a6xx_gpu->sqe_bo, gpu->aspace);
  drm_gem_object_put_unlocked(a6xx_gpu->sqe_bo);
 }

 a6xx_gmu_remove(a6xx_gpu);

 adreno_gpu_cleanup(adreno_gpu);
 kfree(a6xx_gpu);
}
