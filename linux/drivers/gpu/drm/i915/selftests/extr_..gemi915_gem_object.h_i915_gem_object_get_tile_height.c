
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 int i915_gem_object_get_tiling (struct drm_i915_gem_object const*) ;
 unsigned int i915_gem_tile_height (int ) ;

__attribute__((used)) static inline unsigned int
i915_gem_object_get_tile_height(const struct drm_i915_gem_object *obj)
{
 return i915_gem_tile_height(i915_gem_object_get_tiling(obj));
}
