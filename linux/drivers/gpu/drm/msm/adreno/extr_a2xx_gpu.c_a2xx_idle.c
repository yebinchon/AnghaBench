
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int name; int * rb; } ;


 int A2XX_RBBM_STATUS_GUI_ACTIVE ;
 int DRM_ERROR (char*,int ) ;
 int REG_A2XX_RBBM_STATUS ;
 int adreno_idle (struct msm_gpu*,int ) ;
 int gpu_read (struct msm_gpu*,int ) ;
 scalar_t__ spin_until (int) ;

__attribute__((used)) static bool a2xx_idle(struct msm_gpu *gpu)
{

 if (!adreno_idle(gpu, gpu->rb[0]))
  return 0;


 if (spin_until(!(gpu_read(gpu, REG_A2XX_RBBM_STATUS) &
   A2XX_RBBM_STATUS_GUI_ACTIVE))) {
  DRM_ERROR("%s: timeout waiting for GPU to idle!\n", gpu->name);


  return 0;
 }

 return 1;
}
