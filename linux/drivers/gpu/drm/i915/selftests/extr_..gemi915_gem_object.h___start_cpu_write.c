
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int cache_dirty; void* write_domain; void* read_domains; } ;


 void* I915_GEM_DOMAIN_CPU ;
 scalar_t__ cpu_write_needs_clflush (struct drm_i915_gem_object*) ;

__attribute__((used)) static inline void __start_cpu_write(struct drm_i915_gem_object *obj)
{
 obj->read_domains = I915_GEM_DOMAIN_CPU;
 obj->write_domain = I915_GEM_DOMAIN_CPU;
 if (cpu_write_needs_clflush(obj))
  obj->cache_dirty = 1;
}
