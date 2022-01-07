
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ model; int features; int minor_features7; int minor_features10; int minor_features0; } ;
struct etnaviv_gpu {int exec_state; int initialized; int dev; int lock; int event_free; int event; int event_bitmap; int event_spinlock; int buffer; TYPE_3__ identity; int sec_mode; TYPE_1__* drm; } ;
struct etnaviv_drm_private {int cmdbuf_suballoc; TYPE_2__* mmu_global; } ;
struct TYPE_5__ {scalar_t__ memory_base; } ;
struct TYPE_4__ {struct etnaviv_drm_private* dev_private; } ;


 int ARRAY_SIZE (int ) ;
 int ENXIO ;
 int ETNA_NR_EVENTS ;
 int ETNA_SEC_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ PHYS_OFFSET ;
 scalar_t__ SZ_2G ;
 int bitmap_zero (int ,int ) ;
 int chipFeatures_FAST_CLEAR ;
 int chipFeatures_FE20 ;
 int chipFeatures_PIPE_3D ;
 int chipFeatures_PIPE_VG ;
 int chipMinorFeatures0_MC20 ;
 int chipMinorFeatures10_SECURITY_AHB ;
 int chipMinorFeatures7_BIT_SECURITY ;
 int complete (int *) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int dma_get_required_mask (int ) ;
 int etnaviv_cmdbuf_init (int ,int *,int ) ;
 int etnaviv_gpu_hw_init (struct etnaviv_gpu*) ;
 int etnaviv_hw_identify (struct etnaviv_gpu*) ;
 int etnaviv_hw_reset (struct etnaviv_gpu*) ;
 int etnaviv_iommu_global_init (struct etnaviv_gpu*) ;
 int init_completion (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock_init (int *) ;

int etnaviv_gpu_init(struct etnaviv_gpu *gpu)
{
 struct etnaviv_drm_private *priv = gpu->drm->dev_private;
 int ret, i;

 ret = pm_runtime_get_sync(gpu->dev);
 if (ret < 0) {
  dev_err(gpu->dev, "Failed to enable GPU power domain\n");
  return ret;
 }

 etnaviv_hw_identify(gpu);

 if (gpu->identity.model == 0) {
  dev_err(gpu->dev, "Unknown GPU model\n");
  ret = -ENXIO;
  goto fail;
 }


 if (gpu->identity.features & chipFeatures_PIPE_VG &&
     gpu->identity.features & chipFeatures_FE20) {
  dev_info(gpu->dev, "Ignoring GPU with VG and FE2.0\n");
  ret = -ENXIO;
  goto fail;
 }





 if ((gpu->identity.minor_features7 & chipMinorFeatures7_BIT_SECURITY) &&
     (gpu->identity.minor_features10 & chipMinorFeatures10_SECURITY_AHB))
  gpu->sec_mode = ETNA_SEC_KERNEL;

 ret = etnaviv_hw_reset(gpu);
 if (ret) {
  dev_err(gpu->dev, "GPU reset failed\n");
  goto fail;
 }

 ret = etnaviv_iommu_global_init(gpu);
 if (ret)
  goto fail;
 if (!(gpu->identity.features & chipFeatures_PIPE_3D) ||
     (gpu->identity.minor_features0 & chipMinorFeatures0_MC20)) {
  u32 dma_mask = (u32)dma_get_required_mask(gpu->dev);
  if (dma_mask < PHYS_OFFSET + SZ_2G)
   priv->mmu_global->memory_base = PHYS_OFFSET;
  else
   priv->mmu_global->memory_base = dma_mask - SZ_2G + 1;
 } else if (PHYS_OFFSET >= SZ_2G) {
  dev_info(gpu->dev, "Need to move linear window on MC1.0, disabling TS\n");
  priv->mmu_global->memory_base = PHYS_OFFSET;
  gpu->identity.features &= ~chipFeatures_FAST_CLEAR;
 }


 ret = etnaviv_cmdbuf_init(priv->cmdbuf_suballoc, &gpu->buffer,
      PAGE_SIZE);
 if (ret) {
  dev_err(gpu->dev, "could not create command buffer\n");
  goto fail;
 }


 spin_lock_init(&gpu->event_spinlock);
 init_completion(&gpu->event_free);
 bitmap_zero(gpu->event_bitmap, ETNA_NR_EVENTS);
 for (i = 0; i < ARRAY_SIZE(gpu->event); i++)
  complete(&gpu->event_free);


 mutex_lock(&gpu->lock);
 etnaviv_gpu_hw_init(gpu);
 gpu->exec_state = -1;
 mutex_unlock(&gpu->lock);

 pm_runtime_mark_last_busy(gpu->dev);
 pm_runtime_put_autosuspend(gpu->dev);

 gpu->initialized = 1;

 return 0;

fail:
 pm_runtime_mark_last_busy(gpu->dev);
 pm_runtime_put_autosuspend(gpu->dev);

 return ret;
}
