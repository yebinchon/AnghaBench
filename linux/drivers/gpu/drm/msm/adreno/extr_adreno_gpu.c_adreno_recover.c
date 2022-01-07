
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* funcs; struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {int (* pm_resume ) (struct msm_gpu*) ;int (* pm_suspend ) (struct msm_gpu*) ;} ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int msm_gpu_hw_init (struct msm_gpu*) ;
 int stub1 (struct msm_gpu*) ;
 int stub2 (struct msm_gpu*) ;

void adreno_recover(struct msm_gpu *gpu)
{
 struct drm_device *dev = gpu->dev;
 int ret;




 gpu->funcs->pm_suspend(gpu);
 gpu->funcs->pm_resume(gpu);

 ret = msm_gpu_hw_init(gpu);
 if (ret) {
  DRM_DEV_ERROR(dev->dev, "gpu hw init failed: %d\n", ret);

 }
}
