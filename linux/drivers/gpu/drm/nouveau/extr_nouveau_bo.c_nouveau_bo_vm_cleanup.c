
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resv; } ;
struct ttm_buffer_object {TYPE_1__ base; int bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct dma_fence {int dummy; } ;


 struct dma_fence* dma_resv_get_excl (int ) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 int nv10_bo_put_tile_region (struct drm_device*,struct nouveau_drm_tile*,struct dma_fence*) ;

__attribute__((used)) static void
nouveau_bo_vm_cleanup(struct ttm_buffer_object *bo,
        struct nouveau_drm_tile *new_tile,
        struct nouveau_drm_tile **old_tile)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct drm_device *dev = drm->dev;
 struct dma_fence *fence = dma_resv_get_excl(bo->base.resv);

 nv10_bo_put_tile_region(dev, *old_tile, fence);
 *old_tile = new_tile;
}
