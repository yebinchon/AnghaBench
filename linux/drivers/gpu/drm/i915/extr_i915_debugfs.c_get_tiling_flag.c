
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;





 int i915_gem_object_get_tiling (struct drm_i915_gem_object*) ;

__attribute__((used)) static char get_tiling_flag(struct drm_i915_gem_object *obj)
{
 switch (i915_gem_object_get_tiling(obj)) {
 default:
 case 130: return ' ';
 case 129: return 'X';
 case 128: return 'Y';
 }
}
