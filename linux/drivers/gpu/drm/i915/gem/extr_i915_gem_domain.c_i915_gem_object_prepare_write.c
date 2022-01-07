
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dirty; } ;
struct drm_i915_gem_object {int cache_coherent; int read_domains; TYPE_1__ mm; int frontbuffer; int cache_dirty; } ;


 unsigned int CLFLUSH_AFTER ;
 unsigned int CLFLUSH_BEFORE ;
 int ENODEV ;
 int I915_BO_CACHE_COHERENT_FOR_WRITE ;
 int I915_GEM_DOMAIN_CPU ;
 int I915_WAIT_ALL ;
 int I915_WAIT_INTERRUPTIBLE ;
 int MAX_SCHEDULE_TIMEOUT ;
 int ORIGIN_CPU ;
 int X86_FEATURE_CLFLUSH ;
 int i915_gem_object_flush_write_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_has_struct_page (struct drm_i915_gem_object*) ;
 int i915_gem_object_lock_interruptible (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_set_to_cpu_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_wait (struct drm_i915_gem_object*,int,int ) ;
 int intel_frontbuffer_invalidate (int ,int ) ;
 int static_cpu_has (int ) ;

int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
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
       I915_WAIT_INTERRUPTIBLE |
       I915_WAIT_ALL,
       MAX_SCHEDULE_TIMEOUT);
 if (ret)
  goto err_unlock;

 ret = i915_gem_object_pin_pages(obj);
 if (ret)
  goto err_unlock;

 if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE ||
     !static_cpu_has(X86_FEATURE_CLFLUSH)) {
  ret = i915_gem_object_set_to_cpu_domain(obj, 1);
  if (ret)
   goto err_unpin;
  else
   goto out;
 }

 i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);






 if (!obj->cache_dirty) {
  *needs_clflush |= CLFLUSH_AFTER;





  if (!(obj->read_domains & I915_GEM_DOMAIN_CPU))
   *needs_clflush |= CLFLUSH_BEFORE;
 }

out:
 intel_frontbuffer_invalidate(obj->frontbuffer, ORIGIN_CPU);
 obj->mm.dirty = 1;

 return 0;

err_unpin:
 i915_gem_object_unpin_pages(obj);
err_unlock:
 i915_gem_object_unlock(obj);
 return ret;
}
