
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_mode_create_dumb {int pitch; int width; int size; int height; int handle; int bpp; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ALIGN (int,int) ;
 int DIV_ROUND_UP (int ,int) ;
 int DRM_ERROR (char*,int) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int hibmc_gem_create (struct drm_device*,int,int,struct drm_gem_object**) ;

int hibmc_dumb_create(struct drm_file *file, struct drm_device *dev,
        struct drm_mode_create_dumb *args)
{
 struct drm_gem_object *gobj;
 u32 handle;
 int ret;

 args->pitch = ALIGN(args->width * DIV_ROUND_UP(args->bpp, 8), 16);
 args->size = args->pitch * args->height;

 ret = hibmc_gem_create(dev, args->size, 0,
          &gobj);
 if (ret) {
  DRM_ERROR("failed to create GEM object: %d\n", ret);
  return ret;
 }

 ret = drm_gem_handle_create(file, gobj, &handle);
 drm_gem_object_put_unlocked(gobj);
 if (ret) {
  DRM_ERROR("failed to unreference GEM object: %d\n", ret);
  return ret;
 }

 args->handle = handle;
 return 0;
}
