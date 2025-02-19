
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bit_6_swizzle_x; } ;
struct drm_i915_private {TYPE_2__ mm; } ;
struct TYPE_3__ {int dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 scalar_t__ I915_BIT_6_SWIZZLE_9_10_17 ;
 scalar_t__ i915_gem_object_is_tiled (struct drm_i915_gem_object*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *dev_priv = to_i915(obj->base.dev);

 return dev_priv->mm.bit_6_swizzle_x == I915_BIT_6_SWIZZLE_9_10_17 &&
  i915_gem_object_is_tiled(obj);
}
