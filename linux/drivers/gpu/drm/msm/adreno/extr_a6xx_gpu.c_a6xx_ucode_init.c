
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* pdev; } ;
struct adreno_gpu {int * fw; } ;
struct a6xx_gpu {int sqe_iova; int * sqe_bo; } ;
struct TYPE_2__ {int dev; } ;


 size_t ADRENO_FW_SQE ;
 int DRM_DEV_ERROR (int *,char*,int) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int REG_A6XX_CP_SQE_INSTR_BASE_HI ;
 int REG_A6XX_CP_SQE_INSTR_BASE_LO ;
 int * adreno_fw_create_bo (struct msm_gpu*,int ,int *) ;
 int gpu_write64 (struct msm_gpu*,int ,int ,int ) ;
 int msm_gem_object_set_name (int *,char*) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a6xx_ucode_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);

 if (!a6xx_gpu->sqe_bo) {
  a6xx_gpu->sqe_bo = adreno_fw_create_bo(gpu,
   adreno_gpu->fw[ADRENO_FW_SQE], &a6xx_gpu->sqe_iova);

  if (IS_ERR(a6xx_gpu->sqe_bo)) {
   int ret = PTR_ERR(a6xx_gpu->sqe_bo);

   a6xx_gpu->sqe_bo = ((void*)0);
   DRM_DEV_ERROR(&gpu->pdev->dev,
    "Could not allocate SQE ucode: %d\n", ret);

   return ret;
  }

  msm_gem_object_set_name(a6xx_gpu->sqe_bo, "sqefw");
 }

 gpu_write64(gpu, REG_A6XX_CP_SQE_INSTR_BASE_LO,
  REG_A6XX_CP_SQE_INSTR_BASE_HI, a6xx_gpu->sqe_iova);

 return 0;
}
