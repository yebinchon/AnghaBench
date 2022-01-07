
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_gem_object {scalar_t__ dma_addr_cnt; int flags; int lock; int sgt; scalar_t__ vaddr; int dma_addr; struct omap_gem_object* pages; int mm_list; } ;
struct omap_drm_private {int list_lock; } ;
struct drm_gem_object {scalar_t__ import_attach; int size; struct drm_device* dev; } ;
struct drm_device {int dev; struct omap_drm_private* dev_private; } ;


 int OMAP_BO_MEM_DMABUF ;
 int OMAP_BO_MEM_DMA_API ;
 int WARN_ON (int) ;
 int dma_free_wc (int ,int ,scalar_t__,int ) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,int ) ;
 int kfree (struct omap_gem_object*) ;
 int list_del (int *) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_gem_detach_pages (struct drm_gem_object*) ;
 int omap_gem_evict (struct drm_gem_object*) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;
 int vunmap (scalar_t__) ;

void omap_gem_free_object(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct omap_drm_private *priv = dev->dev_private;
 struct omap_gem_object *omap_obj = to_omap_bo(obj);

 omap_gem_evict(obj);

 mutex_lock(&priv->list_lock);
 list_del(&omap_obj->mm_list);
 mutex_unlock(&priv->list_lock);







 mutex_lock(&omap_obj->lock);


 WARN_ON(omap_obj->dma_addr_cnt > 0);

 if (omap_obj->pages) {
  if (omap_obj->flags & OMAP_BO_MEM_DMABUF)
   kfree(omap_obj->pages);
  else
   omap_gem_detach_pages(obj);
 }

 if (omap_obj->flags & OMAP_BO_MEM_DMA_API) {
  dma_free_wc(dev->dev, obj->size, omap_obj->vaddr,
       omap_obj->dma_addr);
 } else if (omap_obj->vaddr) {
  vunmap(omap_obj->vaddr);
 } else if (obj->import_attach) {
  drm_prime_gem_destroy(obj, omap_obj->sgt);
 }

 mutex_unlock(&omap_obj->lock);

 drm_gem_object_release(obj);

 mutex_destroy(&omap_obj->lock);

 kfree(omap_obj);
}
