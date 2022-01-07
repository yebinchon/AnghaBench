
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 unsigned int i915_gem_object_get_stride (struct drm_i915_gem_object const*) ;
 unsigned int i915_gem_object_get_tile_height (struct drm_i915_gem_object const*) ;

__attribute__((used)) static inline unsigned int
i915_gem_object_get_tile_row_size(const struct drm_i915_gem_object *obj)
{
 return (i915_gem_object_get_stride(obj) *
  i915_gem_object_get_tile_height(obj));
}
