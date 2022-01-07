
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_create {int handle; int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int i915_gem_create (struct drm_file*,struct drm_i915_private*,int *,int *) ;
 int i915_gem_flush_free_objects (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

int
i915_gem_create_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_i915_gem_create *args = data;

 i915_gem_flush_free_objects(dev_priv);

 return i915_gem_create(file, dev_priv,
          &args->size, &args->handle);
}
