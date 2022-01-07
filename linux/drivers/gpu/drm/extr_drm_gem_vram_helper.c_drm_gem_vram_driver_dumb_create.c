
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_create_dumb {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* vram_mm; } ;
struct TYPE_2__ {int bdev; } ;


 int EINVAL ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int drm_gem_vram_fill_create_dumb (struct drm_file*,struct drm_device*,int *,int ,int,struct drm_mode_create_dumb*) ;

int drm_gem_vram_driver_dumb_create(struct drm_file *file,
        struct drm_device *dev,
        struct drm_mode_create_dumb *args)
{
 if (WARN_ONCE(!dev->vram_mm, "VRAM MM not initialized"))
  return -EINVAL;

 return drm_gem_vram_fill_create_dumb(file, dev, &dev->vram_mm->bdev, 0,
          0, args);
}
