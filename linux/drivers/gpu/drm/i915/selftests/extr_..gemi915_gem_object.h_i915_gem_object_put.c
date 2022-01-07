
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int base; } ;


 int __drm_gem_object_put (int *) ;

__attribute__((used)) __attribute__((nonnull))
static inline void
i915_gem_object_put(struct drm_i915_gem_object *obj)
{
 __drm_gem_object_put(&obj->base);
}
