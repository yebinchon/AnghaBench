
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_vma {int dummy; } ;
struct i915_ggtt_view {int dummy; } ;
struct i915_address_space {int closed; } ;
struct TYPE_2__ {int lock; } ;
struct drm_i915_gem_object {TYPE_1__ vma; } ;


 int GEM_BUG_ON (int) ;
 int IS_ERR (struct i915_vma*) ;
 int i915_is_ggtt (struct i915_address_space*) ;
 scalar_t__ i915_vma_compare (struct i915_vma*,struct i915_address_space*,struct i915_ggtt_view const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 struct i915_vma* vma_create (struct drm_i915_gem_object*,struct i915_address_space*,struct i915_ggtt_view const*) ;
 struct i915_vma* vma_lookup (struct drm_i915_gem_object*,struct i915_address_space*,struct i915_ggtt_view const*) ;

struct i915_vma *
i915_vma_instance(struct drm_i915_gem_object *obj,
    struct i915_address_space *vm,
    const struct i915_ggtt_view *view)
{
 struct i915_vma *vma;

 GEM_BUG_ON(view && !i915_is_ggtt(vm));
 GEM_BUG_ON(vm->closed);

 spin_lock(&obj->vma.lock);
 vma = vma_lookup(obj, vm, view);
 spin_unlock(&obj->vma.lock);


 if (unlikely(!vma))
  vma = vma_create(obj, vm, view);

 GEM_BUG_ON(!IS_ERR(vma) && i915_vma_compare(vma, vm, view));
 return vma;
}
