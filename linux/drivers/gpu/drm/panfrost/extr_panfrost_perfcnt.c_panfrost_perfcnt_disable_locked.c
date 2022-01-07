
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panfrost_perfcnt {TYPE_2__* bo; int * buf; struct panfrost_file_priv* user; } ;
struct panfrost_file_priv {int dummy; } ;
struct panfrost_device {int dev; struct panfrost_perfcnt* perfcnt; } ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int EINVAL ;
 int GPU_PERFCNT_CFG ;
 int GPU_PERFCNT_CFG_MODE (int ) ;
 int GPU_PERFCNT_CFG_MODE_OFF ;
 int GPU_PRFCNT_JM_EN ;
 int GPU_PRFCNT_MMU_L2_EN ;
 int GPU_PRFCNT_SHADER_EN ;
 int GPU_PRFCNT_TILER_EN ;
 int drm_gem_object_put_unlocked (int *) ;
 int drm_gem_shmem_vunmap (int *,int *) ;
 int gpu_write (struct panfrost_device*,int ,int) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int panfrost_perfcnt_disable_locked(struct panfrost_device *pfdev,
        struct panfrost_file_priv *user)
{
 struct panfrost_perfcnt *perfcnt = pfdev->perfcnt;

 if (user != perfcnt->user)
  return -EINVAL;

 gpu_write(pfdev, GPU_PRFCNT_JM_EN, 0x0);
 gpu_write(pfdev, GPU_PRFCNT_SHADER_EN, 0x0);
 gpu_write(pfdev, GPU_PRFCNT_MMU_L2_EN, 0x0);
 gpu_write(pfdev, GPU_PRFCNT_TILER_EN, 0);
 gpu_write(pfdev, GPU_PERFCNT_CFG,
    GPU_PERFCNT_CFG_MODE(GPU_PERFCNT_CFG_MODE_OFF));

 perfcnt->user = ((void*)0);
 drm_gem_shmem_vunmap(&perfcnt->bo->base.base, perfcnt->buf);
 perfcnt->buf = ((void*)0);
 drm_gem_object_put_unlocked(&perfcnt->bo->base.base);
 perfcnt->bo = ((void*)0);
 pm_runtime_mark_last_busy(pfdev->dev);
 pm_runtime_put_autosuspend(pfdev->dev);

 return 0;
}
