
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_mode_create_dumb {int width; int height; int pitch; int size; int handle; int bpp; } ;
struct drm_gem_object {int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int DRM_DEBUG (char*,int) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct drm_gem_object*) ;
 int PTR_ERR (struct drm_gem_object*) ;
 struct drm_gem_object* vgem_gem_create (struct drm_device*,struct drm_file*,int *,int) ;

__attribute__((used)) static int vgem_gem_dumb_create(struct drm_file *file, struct drm_device *dev,
    struct drm_mode_create_dumb *args)
{
 struct drm_gem_object *gem_object;
 u64 pitch, size;

 pitch = args->width * DIV_ROUND_UP(args->bpp, 8);
 size = args->height * pitch;
 if (size == 0)
  return -EINVAL;

 gem_object = vgem_gem_create(dev, file, &args->handle, size);
 if (IS_ERR(gem_object))
  return PTR_ERR(gem_object);

 args->size = gem_object->size;
 args->pitch = pitch;

 DRM_DEBUG("Created object of size %lld\n", size);

 return 0;
}
