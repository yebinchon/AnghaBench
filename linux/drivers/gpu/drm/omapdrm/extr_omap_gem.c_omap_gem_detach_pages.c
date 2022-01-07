
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_gem_object {int * pages; scalar_t__* dma_addrs; int lock; } ;
struct drm_gem_object {unsigned int size; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int drm_gem_put_pages (struct drm_gem_object*,int *,int,int) ;
 int kfree (scalar_t__*) ;
 int lockdep_assert_held (int *) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

__attribute__((used)) static void omap_gem_detach_pages(struct drm_gem_object *obj)
{
 struct omap_gem_object *omap_obj = to_omap_bo(obj);
 unsigned int npages = obj->size >> PAGE_SHIFT;
 unsigned int i;

 lockdep_assert_held(&omap_obj->lock);

 for (i = 0; i < npages; i++) {
  if (omap_obj->dma_addrs[i])
   dma_unmap_page(obj->dev->dev, omap_obj->dma_addrs[i],
           PAGE_SIZE, DMA_TO_DEVICE);
 }

 kfree(omap_obj->dma_addrs);
 omap_obj->dma_addrs = ((void*)0);

 drm_gem_put_pages(obj, omap_obj->pages, 1, 0);
 omap_obj->pages = ((void*)0);
}
