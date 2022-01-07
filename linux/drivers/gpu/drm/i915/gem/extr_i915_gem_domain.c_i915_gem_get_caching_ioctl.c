
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int cache_level; } ;
struct drm_i915_gem_caching {int caching; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;



 int I915_CACHING_CACHED ;
 int I915_CACHING_DISPLAY ;
 int I915_CACHING_NONE ;
 struct drm_i915_gem_object* i915_gem_object_lookup_rcu (struct drm_file*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int i915_gem_get_caching_ioctl(struct drm_device *dev, void *data,
          struct drm_file *file)
{
 struct drm_i915_gem_caching *args = data;
 struct drm_i915_gem_object *obj;
 int err = 0;

 rcu_read_lock();
 obj = i915_gem_object_lookup_rcu(file, args->handle);
 if (!obj) {
  err = -ENOENT;
  goto out;
 }

 switch (obj->cache_level) {
 case 129:
 case 130:
  args->caching = I915_CACHING_CACHED;
  break;

 case 128:
  args->caching = I915_CACHING_DISPLAY;
  break;

 default:
  args->caching = I915_CACHING_NONE;
  break;
 }
out:
 rcu_read_unlock();
 return err;
}
