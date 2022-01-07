
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_DEV_INFO (int *,char*,int ) ;
 int REG_A6XX_RBBM_STATUS ;
 int adreno_dump (struct msm_gpu*) ;
 int gpu_read (struct msm_gpu*,int ) ;

__attribute__((used)) static void a6xx_dump(struct msm_gpu *gpu)
{
 DRM_DEV_INFO(&gpu->pdev->dev, "status:   %08x\n",
   gpu_read(gpu, REG_A6XX_RBBM_STATUS));
 adreno_dump(gpu);
}
