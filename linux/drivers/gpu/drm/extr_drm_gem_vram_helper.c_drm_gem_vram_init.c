
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_bo_device {int dummy; } ;
struct TYPE_5__ {int * funcs; } ;
struct TYPE_4__ {TYPE_2__ base; struct ttm_bo_device* bdev; } ;
struct drm_gem_vram_object {TYPE_1__ bo; int placement; } ;
struct drm_device {int dummy; } ;


 int TTM_PL_FLAG_SYSTEM ;
 int TTM_PL_FLAG_VRAM ;
 int drm_gem_object_init (struct drm_device*,TYPE_2__*,size_t) ;
 int drm_gem_object_release (TYPE_2__*) ;
 int drm_gem_vram_object_funcs ;
 int drm_gem_vram_placement (struct drm_gem_vram_object*,int) ;
 size_t ttm_bo_dma_acc_size (struct ttm_bo_device*,size_t,int) ;
 int ttm_bo_init (struct ttm_bo_device*,TYPE_1__*,size_t,int ,int *,unsigned long,int,size_t,int *,int *,int ) ;
 int ttm_bo_type_device ;
 int ttm_buffer_object_destroy ;

__attribute__((used)) static int drm_gem_vram_init(struct drm_device *dev,
        struct ttm_bo_device *bdev,
        struct drm_gem_vram_object *gbo,
        size_t size, unsigned long pg_align,
        bool interruptible)
{
 int ret;
 size_t acc_size;

 if (!gbo->bo.base.funcs)
  gbo->bo.base.funcs = &drm_gem_vram_object_funcs;

 ret = drm_gem_object_init(dev, &gbo->bo.base, size);
 if (ret)
  return ret;

 acc_size = ttm_bo_dma_acc_size(bdev, size, sizeof(*gbo));

 gbo->bo.bdev = bdev;
 drm_gem_vram_placement(gbo, TTM_PL_FLAG_VRAM | TTM_PL_FLAG_SYSTEM);

 ret = ttm_bo_init(bdev, &gbo->bo, size, ttm_bo_type_device,
     &gbo->placement, pg_align, interruptible, acc_size,
     ((void*)0), ((void*)0), ttm_buffer_object_destroy);
 if (ret)
  goto err_drm_gem_object_release;

 return 0;

err_drm_gem_object_release:
 drm_gem_object_release(&gbo->bo.base);
 return ret;
}
