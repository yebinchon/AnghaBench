
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_fence {int dummy; } ;
struct nouveau_drm_tile {int used; struct nouveau_fence* fence; } ;
struct TYPE_2__ {int lock; } ;
struct nouveau_drm {TYPE_1__ tile; } ;
struct drm_device {int dummy; } ;
struct dma_fence {int dummy; } ;


 scalar_t__ dma_fence_get (struct dma_fence*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nv10_bo_put_tile_region(struct drm_device *dev, struct nouveau_drm_tile *tile,
   struct dma_fence *fence)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (tile) {
  spin_lock(&drm->tile.lock);
  tile->fence = (struct nouveau_fence *)dma_fence_get(fence);
  tile->used = 0;
  spin_unlock(&drm->tile.lock);
 }
}
