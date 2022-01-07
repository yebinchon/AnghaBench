
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct msm_gpu {TYPE_1__* funcs; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {int render; int primary; int dev; int struct_mutex; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_2__ {int (* debugfs_init ) (struct msm_gpu*,int ) ;} ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int adreno_load_fw (struct adreno_gpu*) ;
 int dev_err_once (int ,char*) ;
 int msm_gpu_hw_init (struct msm_gpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gpu* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_sync (int *) ;
 int pm_runtime_set_active (int *) ;
 int stub1 (struct msm_gpu*,int ) ;
 int stub2 (struct msm_gpu*,int ) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

struct msm_gpu *adreno_load_gpu(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct platform_device *pdev = priv->gpu_pdev;
 struct msm_gpu *gpu = ((void*)0);
 struct adreno_gpu *adreno_gpu;
 int ret;

 if (pdev)
  gpu = platform_get_drvdata(pdev);

 if (!gpu) {
  dev_err_once(dev->dev, "no GPU device was found\n");
  return ((void*)0);
 }

 adreno_gpu = to_adreno_gpu(gpu);







 ret = adreno_load_fw(adreno_gpu);
 if (ret)
  return ((void*)0);


 pm_runtime_set_active(&pdev->dev);

 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  pm_runtime_put_sync(&pdev->dev);
  DRM_DEV_ERROR(dev->dev, "Couldn't power up the GPU: %d\n", ret);
  return ((void*)0);
 }

 mutex_lock(&dev->struct_mutex);
 ret = msm_gpu_hw_init(gpu);
 mutex_unlock(&dev->struct_mutex);
 pm_runtime_put_autosuspend(&pdev->dev);
 if (ret) {
  DRM_DEV_ERROR(dev->dev, "gpu hw init failed: %d\n", ret);
  return ((void*)0);
 }
 return gpu;
}
