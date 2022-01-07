
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {scalar_t__ cache_level; } ;


 scalar_t__ I915_CACHE_NONE ;
 scalar_t__ I915_CACHE_WT ;

__attribute__((used)) static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
{
 return !(obj->cache_level == I915_CACHE_NONE ||
   obj->cache_level == I915_CACHE_WT);
}
