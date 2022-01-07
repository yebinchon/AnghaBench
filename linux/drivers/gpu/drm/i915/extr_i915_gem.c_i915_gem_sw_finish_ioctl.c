
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_sw_finish {int handle; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 int i915_gem_object_flush_if_display (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_object_lookup (struct drm_file*,int ) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;

int
i915_gem_sw_finish_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file)
{
 struct drm_i915_gem_sw_finish *args = data;
 struct drm_i915_gem_object *obj;

 obj = i915_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;







 i915_gem_object_flush_if_display(obj);
 i915_gem_object_put(obj);

 return 0;
}
