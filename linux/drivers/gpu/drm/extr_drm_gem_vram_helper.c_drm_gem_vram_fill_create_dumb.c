
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ttm_bo_device {int dummy; } ;
struct drm_mode_create_dumb {int width; int bpp; size_t height; size_t pitch; size_t size; int handle; } ;
struct TYPE_2__ {int base; } ;
struct drm_gem_vram_object {TYPE_1__ bo; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct drm_gem_vram_object*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct drm_gem_vram_object*) ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct drm_gem_vram_object* drm_gem_vram_create (struct drm_device*,struct ttm_bo_device*,size_t,unsigned long,int) ;
 size_t roundup (size_t,int ) ;

int drm_gem_vram_fill_create_dumb(struct drm_file *file,
      struct drm_device *dev,
      struct ttm_bo_device *bdev,
      unsigned long pg_align,
      bool interruptible,
      struct drm_mode_create_dumb *args)
{
 size_t pitch, size;
 struct drm_gem_vram_object *gbo;
 int ret;
 u32 handle;

 pitch = args->width * ((args->bpp + 7) / 8);
 size = pitch * args->height;

 size = roundup(size, PAGE_SIZE);
 if (!size)
  return -EINVAL;

 gbo = drm_gem_vram_create(dev, bdev, size, pg_align, interruptible);
 if (IS_ERR(gbo))
  return PTR_ERR(gbo);

 ret = drm_gem_handle_create(file, &gbo->bo.base, &handle);
 if (ret)
  goto err_drm_gem_object_put_unlocked;

 drm_gem_object_put_unlocked(&gbo->bo.base);

 args->pitch = pitch;
 args->size = size;
 args->handle = handle;

 return 0;

err_drm_gem_object_put_unlocked:
 drm_gem_object_put_unlocked(&gbo->bo.base);
 return ret;
}
