
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct msm_gpu {int needs_hw_init; TYPE_2__* pdev; TYPE_1__* funcs; int aspace; } ;
struct msm_drm_private {struct msm_gpu* gpu; } ;
struct drm_device {int struct_mutex; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {int ** fw; } ;
struct a5xx_gpu {int * pfp_bo; int * pm4_bo; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* recover ) (struct msm_gpu*) ;} ;


 size_t ADRENO_FW_PFP ;
 size_t ADRENO_FW_PM4 ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int capable (int ) ;
 int drm_gem_object_put (int *) ;
 int msm_gem_unpin_iova (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int release_firmware (int *) ;
 int stub1 (struct msm_gpu*) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int
reset_set(void *data, u64 val)
{
 struct drm_device *dev = data;
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_gpu *gpu = priv->gpu;
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);

 if (!capable(CAP_SYS_ADMIN))
  return -EINVAL;







 mutex_lock(&dev->struct_mutex);

 release_firmware(adreno_gpu->fw[ADRENO_FW_PM4]);
 adreno_gpu->fw[ADRENO_FW_PM4] = ((void*)0);

 release_firmware(adreno_gpu->fw[ADRENO_FW_PFP]);
 adreno_gpu->fw[ADRENO_FW_PFP] = ((void*)0);

 if (a5xx_gpu->pm4_bo) {
  msm_gem_unpin_iova(a5xx_gpu->pm4_bo, gpu->aspace);
  drm_gem_object_put(a5xx_gpu->pm4_bo);
  a5xx_gpu->pm4_bo = ((void*)0);
 }

 if (a5xx_gpu->pfp_bo) {
  msm_gem_unpin_iova(a5xx_gpu->pfp_bo, gpu->aspace);
  drm_gem_object_put(a5xx_gpu->pfp_bo);
  a5xx_gpu->pfp_bo = ((void*)0);
 }

 gpu->needs_hw_init = 1;

 pm_runtime_get_sync(&gpu->pdev->dev);
 gpu->funcs->recover(gpu);

 pm_runtime_put_sync(&gpu->pdev->dev);
 mutex_unlock(&dev->struct_mutex);

 return 0;
}
