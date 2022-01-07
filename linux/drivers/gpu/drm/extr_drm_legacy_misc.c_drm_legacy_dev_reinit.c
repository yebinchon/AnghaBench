
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lock; } ;
struct drm_device {scalar_t__ if_version; scalar_t__ last_context; scalar_t__ context_flag; TYPE_1__ sigdata; int struct_mutex; scalar_t__ irq_enabled; } ;


 int DRM_DEBUG (char*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_legacy_agp_clear (struct drm_device*) ;
 int drm_legacy_dma_takedown (struct drm_device*) ;
 int drm_legacy_sg_cleanup (struct drm_device*) ;
 int drm_legacy_vma_flush (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_legacy_dev_reinit(struct drm_device *dev)
{
 if (dev->irq_enabled)
  drm_irq_uninstall(dev);

 mutex_lock(&dev->struct_mutex);

 drm_legacy_agp_clear(dev);

 drm_legacy_sg_cleanup(dev);
 drm_legacy_vma_flush(dev);
 drm_legacy_dma_takedown(dev);

 mutex_unlock(&dev->struct_mutex);

 dev->sigdata.lock = ((void*)0);

 dev->context_flag = 0;
 dev->last_context = 0;
 dev->if_version = 0;

 DRM_DEBUG("lastclose completed\n");
}
