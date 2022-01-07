
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* funcs; TYPE_2__* pdev; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int gmu; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* pm_resume ) (struct msm_gpu*) ;int (* pm_suspend ) (struct msm_gpu*) ;} ;


 int DRM_DEV_INFO (int *,char*,int,int ) ;
 int REG_A6XX_CP_SCRATCH_REG (int) ;
 int REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE ;
 int a6xx_dump (struct msm_gpu*) ;
 int adreno_dump_info (struct msm_gpu*) ;
 int gmu_write (int *,int ,int ) ;
 int gpu_read (struct msm_gpu*,int ) ;
 scalar_t__ hang_debug ;
 int msm_gpu_hw_init (struct msm_gpu*) ;
 int stub1 (struct msm_gpu*) ;
 int stub2 (struct msm_gpu*) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a6xx_recover(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
 int i;

 adreno_dump_info(gpu);

 for (i = 0; i < 8; i++)
  DRM_DEV_INFO(&gpu->pdev->dev, "CP_SCRATCH_REG%d: %u\n", i,
   gpu_read(gpu, REG_A6XX_CP_SCRATCH_REG(i)));

 if (hang_debug)
  a6xx_dump(gpu);





 gmu_write(&a6xx_gpu->gmu, REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE, 0);

 gpu->funcs->pm_suspend(gpu);
 gpu->funcs->pm_resume(gpu);

 msm_gpu_hw_init(gpu);
}
