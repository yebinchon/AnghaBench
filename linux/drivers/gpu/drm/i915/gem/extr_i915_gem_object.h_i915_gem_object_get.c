
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int base; } ;


 int drm_gem_object_get (int *) ;

__attribute__((used)) __attribute__((nonnull))
static inline struct drm_i915_gem_object *
i915_gem_object_get(struct drm_i915_gem_object *obj)
{
 drm_gem_object_get(&obj->base);
 return obj;
}
