
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* dev; } ;
struct adreno_gpu {int * fw; } ;
struct a5xx_gpu {int pfp_iova; int pm4_iova; int * pfp_bo; int * pm4_bo; } ;
struct TYPE_2__ {int dev; } ;


 size_t ADRENO_FW_PFP ;
 size_t ADRENO_FW_PM4 ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int REG_A5XX_CP_ME_INSTR_BASE_HI ;
 int REG_A5XX_CP_ME_INSTR_BASE_LO ;
 int REG_A5XX_CP_PFP_INSTR_BASE_HI ;
 int REG_A5XX_CP_PFP_INSTR_BASE_LO ;
 void* adreno_fw_create_bo (struct msm_gpu*,int ,int *) ;
 int gpu_write64 (struct msm_gpu*,int ,int ,int ) ;
 int msm_gem_object_set_name (int *,char*) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a5xx_ucode_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 int ret;

 if (!a5xx_gpu->pm4_bo) {
  a5xx_gpu->pm4_bo = adreno_fw_create_bo(gpu,
   adreno_gpu->fw[ADRENO_FW_PM4], &a5xx_gpu->pm4_iova);


  if (IS_ERR(a5xx_gpu->pm4_bo)) {
   ret = PTR_ERR(a5xx_gpu->pm4_bo);
   a5xx_gpu->pm4_bo = ((void*)0);
   DRM_DEV_ERROR(gpu->dev->dev, "could not allocate PM4: %d\n",
    ret);
   return ret;
  }

  msm_gem_object_set_name(a5xx_gpu->pm4_bo, "pm4fw");
 }

 if (!a5xx_gpu->pfp_bo) {
  a5xx_gpu->pfp_bo = adreno_fw_create_bo(gpu,
   adreno_gpu->fw[ADRENO_FW_PFP], &a5xx_gpu->pfp_iova);

  if (IS_ERR(a5xx_gpu->pfp_bo)) {
   ret = PTR_ERR(a5xx_gpu->pfp_bo);
   a5xx_gpu->pfp_bo = ((void*)0);
   DRM_DEV_ERROR(gpu->dev->dev, "could not allocate PFP: %d\n",
    ret);
   return ret;
  }

  msm_gem_object_set_name(a5xx_gpu->pfp_bo, "pfpfw");
 }

 gpu_write64(gpu, REG_A5XX_CP_ME_INSTR_BASE_LO,
  REG_A5XX_CP_ME_INSTR_BASE_HI, a5xx_gpu->pm4_iova);

 gpu_write64(gpu, REG_A5XX_CP_PFP_INSTR_BASE_LO,
  REG_A5XX_CP_PFP_INSTR_BASE_HI, a5xx_gpu->pfp_iova);

 return 0;
}
