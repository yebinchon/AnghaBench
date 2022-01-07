
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct panfrost_perfcnt {struct drm_gem_shmem_object* buf; TYPE_2__* bo; struct panfrost_file_priv* user; int dump_comp; int bosize; } ;
struct panfrost_file_priv {int dummy; } ;
struct panfrost_device {struct panfrost_perfcnt* perfcnt; int ddev; int dev; } ;
struct drm_gem_shmem_object {int base; } ;
struct TYPE_4__ {int base; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 int GPU_CMD ;
 int GPU_CMD_CLEAN_INV_CACHES ;
 int GPU_CMD_PERFCNT_CLEAR ;
 int GPU_INT_CLEAR ;
 int GPU_IRQ_CLEAN_CACHES_COMPLETED ;
 int GPU_IRQ_PERFCNT_SAMPLE_COMPLETED ;
 int GPU_PERFCNT_CFG ;
 int GPU_PERFCNT_CFG_AS (int ) ;
 int GPU_PERFCNT_CFG_MODE (int ) ;
 int GPU_PERFCNT_CFG_MODE_MANUAL ;
 int GPU_PERFCNT_CFG_SETSEL (unsigned int) ;
 int GPU_PRFCNT_JM_EN ;
 int GPU_PRFCNT_MMU_L2_EN ;
 int GPU_PRFCNT_SHADER_EN ;
 int GPU_PRFCNT_TILER_EN ;
 int HW_ISSUE_8186 ;
 scalar_t__ IS_ERR (struct drm_gem_shmem_object*) ;
 int PTR_ERR (struct drm_gem_shmem_object*) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct drm_gem_shmem_object* drm_gem_shmem_create (int ,int ) ;
 struct drm_gem_shmem_object* drm_gem_shmem_vmap (int *) ;
 int drm_gem_shmem_vunmap (int *,struct drm_gem_shmem_object*) ;
 int gpu_write (struct panfrost_device*,int ,int) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ panfrost_has_hw_issue (struct panfrost_device*,int ) ;
 int panfrost_mmu_map (TYPE_2__*) ;
 scalar_t__ panfrost_model_is_bifrost (struct panfrost_device*) ;
 int pm_runtime_get_sync (int ) ;
 int reinit_completion (int *) ;
 TYPE_2__* to_panfrost_bo (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int panfrost_perfcnt_enable_locked(struct panfrost_device *pfdev,
       struct panfrost_file_priv *user,
       unsigned int counterset)
{
 struct panfrost_perfcnt *perfcnt = pfdev->perfcnt;
 struct drm_gem_shmem_object *bo;
 u32 cfg;
 int ret;

 if (user == perfcnt->user)
  return 0;
 else if (perfcnt->user)
  return -EBUSY;

 ret = pm_runtime_get_sync(pfdev->dev);
 if (ret < 0)
  return ret;

 bo = drm_gem_shmem_create(pfdev->ddev, perfcnt->bosize);
 if (IS_ERR(bo))
  return PTR_ERR(bo);

 perfcnt->bo = to_panfrost_bo(&bo->base);


 ret = panfrost_mmu_map(perfcnt->bo);
 if (ret)
  goto err_put_bo;

 perfcnt->buf = drm_gem_shmem_vmap(&bo->base);
 if (IS_ERR(perfcnt->buf)) {
  ret = PTR_ERR(perfcnt->buf);
  goto err_put_bo;
 }





 reinit_completion(&pfdev->perfcnt->dump_comp);
 gpu_write(pfdev, GPU_INT_CLEAR,
    GPU_IRQ_CLEAN_CACHES_COMPLETED |
    GPU_IRQ_PERFCNT_SAMPLE_COMPLETED);
 gpu_write(pfdev, GPU_CMD, GPU_CMD_PERFCNT_CLEAR);
 gpu_write(pfdev, GPU_CMD, GPU_CMD_CLEAN_INV_CACHES);
 ret = wait_for_completion_timeout(&pfdev->perfcnt->dump_comp,
       msecs_to_jiffies(1000));
 if (!ret) {
  ret = -ETIMEDOUT;
  goto err_vunmap;
 }

 perfcnt->user = user;






 cfg = GPU_PERFCNT_CFG_AS(0) |
       GPU_PERFCNT_CFG_MODE(GPU_PERFCNT_CFG_MODE_MANUAL);





 if (panfrost_model_is_bifrost(pfdev))
  cfg |= GPU_PERFCNT_CFG_SETSEL(counterset);

 gpu_write(pfdev, GPU_PRFCNT_JM_EN, 0xffffffff);
 gpu_write(pfdev, GPU_PRFCNT_SHADER_EN, 0xffffffff);
 gpu_write(pfdev, GPU_PRFCNT_MMU_L2_EN, 0xffffffff);





 if (panfrost_has_hw_issue(pfdev, HW_ISSUE_8186))
  gpu_write(pfdev, GPU_PRFCNT_TILER_EN, 0);
 else
  gpu_write(pfdev, GPU_PRFCNT_TILER_EN, 0xffffffff);

 gpu_write(pfdev, GPU_PERFCNT_CFG, cfg);

 if (panfrost_has_hw_issue(pfdev, HW_ISSUE_8186))
  gpu_write(pfdev, GPU_PRFCNT_TILER_EN, 0xffffffff);

 return 0;

err_vunmap:
 drm_gem_shmem_vunmap(&perfcnt->bo->base.base, perfcnt->buf);
err_put_bo:
 drm_gem_object_put_unlocked(&bo->base);
 return ret;
}
