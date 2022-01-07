
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct ttm_buffer_object {TYPE_1__ base; int bdev; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct nouveau_bo {scalar_t__ pin_refcnt; int tile; } ;
struct drm_device {int dummy; } ;


 int WARN_ON (int) ;
 int drm_gem_object_release (TYPE_1__*) ;
 int kfree (struct nouveau_bo*) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 int nv10_bo_put_tile_region (struct drm_device*,int ,int *) ;

__attribute__((used)) static void
nouveau_bo_del_ttm(struct ttm_buffer_object *bo)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct drm_device *dev = drm->dev;
 struct nouveau_bo *nvbo = nouveau_bo(bo);

 WARN_ON(nvbo->pin_refcnt > 0);
 nv10_bo_put_tile_region(dev, nvbo->tile, ((void*)0));





 if (bo->base.dev)
  drm_gem_object_release(&bo->base);

 kfree(nvbo);
}
