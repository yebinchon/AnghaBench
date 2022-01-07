
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {scalar_t__ write_domain; scalar_t__ cache_dirty; } ;


 int I915_CLFLUSH_FORCE ;
 int I915_GEM_DOMAIN_CPU ;
 int i915_gem_clflush_object (struct drm_i915_gem_object*,int ) ;
 int i915_gem_object_flush_write_domain (struct drm_i915_gem_object*,int ) ;

__attribute__((used)) static void __i915_gem_object_flush_for_display(struct drm_i915_gem_object *obj)
{




 i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 if (obj->cache_dirty)
  i915_gem_clflush_object(obj, I915_CLFLUSH_FORCE);
 obj->write_domain = 0;
}
