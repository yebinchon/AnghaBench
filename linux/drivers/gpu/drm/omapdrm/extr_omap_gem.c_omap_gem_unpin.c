
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_gem_object {scalar_t__ dma_addr_cnt; int lock; int * block; scalar_t__ dma_addr; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tiler_release (int *) ;
 int tiler_unpin (int *) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

void omap_gem_unpin(struct drm_gem_object *obj)
{
 struct omap_gem_object *omap_obj = to_omap_bo(obj);
 int ret;

 mutex_lock(&omap_obj->lock);

 if (omap_obj->dma_addr_cnt > 0) {
  omap_obj->dma_addr_cnt--;
  if (omap_obj->dma_addr_cnt == 0) {
   ret = tiler_unpin(omap_obj->block);
   if (ret) {
    dev_err(obj->dev->dev,
     "could not unpin pages: %d\n", ret);
   }
   ret = tiler_release(omap_obj->block);
   if (ret) {
    dev_err(obj->dev->dev,
     "could not release unmap: %d\n", ret);
   }
   omap_obj->dma_addr = 0;
   omap_obj->block = ((void*)0);
  }
 }

 mutex_unlock(&omap_obj->lock);
}
