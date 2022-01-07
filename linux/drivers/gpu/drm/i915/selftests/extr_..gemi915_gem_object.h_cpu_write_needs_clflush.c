
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int cache_coherent; int pin_global; scalar_t__ cache_dirty; } ;


 int I915_BO_CACHE_COHERENT_FOR_WRITE ;

__attribute__((used)) static inline bool cpu_write_needs_clflush(struct drm_i915_gem_object *obj)
{
 if (obj->cache_dirty)
  return 0;

 if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE))
  return 1;

 return obj->pin_global;
}
