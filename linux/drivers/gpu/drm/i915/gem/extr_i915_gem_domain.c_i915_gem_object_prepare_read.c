
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int cache_coherent; int read_domains; int cache_dirty; } ;


 unsigned int CLFLUSH_BEFORE ;
 int ENODEV ;
 int I915_BO_CACHE_COHERENT_FOR_READ ;
 int I915_GEM_DOMAIN_CPU ;
 int I915_WAIT_INTERRUPTIBLE ;
 int MAX_SCHEDULE_TIMEOUT ;
 int X86_FEATURE_CLFLUSH ;
 int i915_gem_object_flush_write_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_has_struct_page (struct drm_i915_gem_object*) ;
 int i915_gem_object_lock_interruptible (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_set_to_cpu_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_wait (struct drm_i915_gem_object*,int ,int ) ;
 int static_cpu_has (int ) ;

int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
     unsigned int *needs_clflush)
{
 int ret;

 *needs_clflush = 0;
 if (!i915_gem_object_has_struct_page(obj))
  return -ENODEV;

 ret = i915_gem_object_lock_interruptible(obj);
 if (ret)
  return ret;

 ret = i915_gem_object_wait(obj,
       I915_WAIT_INTERRUPTIBLE,
       MAX_SCHEDULE_TIMEOUT);
 if (ret)
  goto err_unlock;

 ret = i915_gem_object_pin_pages(obj);
 if (ret)
  goto err_unlock;

 if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ ||
     !static_cpu_has(X86_FEATURE_CLFLUSH)) {
  ret = i915_gem_object_set_to_cpu_domain(obj, 0);
  if (ret)
   goto err_unpin;
  else
   goto out;
 }

 i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);






 if (!obj->cache_dirty &&
     !(obj->read_domains & I915_GEM_DOMAIN_CPU))
  *needs_clflush = CLFLUSH_BEFORE;

out:

 return 0;

err_unpin:
 i915_gem_object_unpin_pages(obj);
err_unlock:
 i915_gem_object_unlock(obj);
 return ret;
}
