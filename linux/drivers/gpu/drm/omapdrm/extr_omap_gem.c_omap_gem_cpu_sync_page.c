
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_gem_object {scalar_t__* dma_addrs; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int DMA_TO_DEVICE ;
 int PAGE_SIZE ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 scalar_t__ omap_gem_is_cached_coherent (struct drm_gem_object*) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

void omap_gem_cpu_sync_page(struct drm_gem_object *obj, int pgoff)
{
 struct drm_device *dev = obj->dev;
 struct omap_gem_object *omap_obj = to_omap_bo(obj);

 if (omap_gem_is_cached_coherent(obj))
  return;

 if (omap_obj->dma_addrs[pgoff]) {
  dma_unmap_page(dev->dev, omap_obj->dma_addrs[pgoff],
    PAGE_SIZE, DMA_TO_DEVICE);
  omap_obj->dma_addrs[pgoff] = 0;
 }
}
