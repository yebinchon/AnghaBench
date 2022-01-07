
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct i915_vma {int dummy; } ;
struct i915_ggtt_view {int dummy; } ;
struct i915_address_space {int dummy; } ;
struct TYPE_4__ {struct i915_address_space vm; } ;
struct drm_i915_private {TYPE_2__ ggtt; } ;
struct TYPE_3__ {int dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int PIN_GLOBAL ;
 struct i915_vma* i915_gem_object_pin (struct drm_i915_gem_object*,struct i915_address_space*,struct i915_ggtt_view const*,int,int,int) ;
 struct drm_i915_private* to_i915 (int ) ;

struct i915_vma *
i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
    const struct i915_ggtt_view *view,
    u64 size,
    u64 alignment,
    u64 flags)
{
 struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
 struct i915_address_space *vm = &dev_priv->ggtt.vm;

 return i915_gem_object_pin(obj, vm, view, size, alignment,
       flags | PIN_GLOBAL);
}
