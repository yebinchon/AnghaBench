
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_gem_object {int dummy; } ;


 int I915_MAP_WC ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int i915_gem_object_lock (struct drm_i915_gem_object*) ;
 int * i915_gem_object_pin_map (struct drm_i915_gem_object*,int ) ;
 int i915_gem_object_set_to_wc_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_map (struct drm_i915_gem_object*) ;

__attribute__((used)) static int wc_set(struct drm_i915_gem_object *obj,
    unsigned long offset,
    u32 v)
{
 u32 *map;
 int err;

 i915_gem_object_lock(obj);
 err = i915_gem_object_set_to_wc_domain(obj, 1);
 i915_gem_object_unlock(obj);
 if (err)
  return err;

 map = i915_gem_object_pin_map(obj, I915_MAP_WC);
 if (IS_ERR(map))
  return PTR_ERR(map);

 map[offset / sizeof(*map)] = v;
 i915_gem_object_unpin_map(obj);

 return 0;
}
