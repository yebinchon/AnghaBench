
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union omap_gem_size {int dummy; } omap_gem_size ;
typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int omap_gem_free_object (struct drm_gem_object*) ;
 struct drm_gem_object* omap_gem_new (struct drm_device*,union omap_gem_size,int ) ;

int omap_gem_new_handle(struct drm_device *dev, struct drm_file *file,
  union omap_gem_size gsize, u32 flags, u32 *handle)
{
 struct drm_gem_object *obj;
 int ret;

 obj = omap_gem_new(dev, gsize, flags);
 if (!obj)
  return -ENOMEM;

 ret = drm_gem_handle_create(file, obj, handle);
 if (ret) {
  omap_gem_free_object(obj);
  return ret;
 }


 drm_gem_object_put_unlocked(obj);

 return 0;
}
