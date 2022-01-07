
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reloc_cache {scalar_t__ has_llc; } ;
struct drm_i915_gem_object {scalar_t__ cache_level; scalar_t__ cache_dirty; } ;


 scalar_t__ DBG_FORCE_RELOC ;
 scalar_t__ FORCE_CPU_RELOC ;
 scalar_t__ FORCE_GTT_RELOC ;
 scalar_t__ I915_CACHE_NONE ;
 int i915_gem_object_has_struct_page (struct drm_i915_gem_object const*) ;

__attribute__((used)) static inline int use_cpu_reloc(const struct reloc_cache *cache,
    const struct drm_i915_gem_object *obj)
{
 if (!i915_gem_object_has_struct_page(obj))
  return 0;

 if (DBG_FORCE_RELOC == FORCE_CPU_RELOC)
  return 1;

 if (DBG_FORCE_RELOC == FORCE_GTT_RELOC)
  return 0;

 return (cache->has_llc ||
  obj->cache_dirty ||
  obj->cache_level != I915_CACHE_NONE);
}
