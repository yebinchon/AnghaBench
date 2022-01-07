
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_vma {int obj; struct i915_fence_reg* fence; } ;
struct i915_fence_reg {int vma; } ;
struct TYPE_2__ {int num_fences; struct i915_fence_reg* fence_regs; } ;
struct drm_i915_private {TYPE_1__ ggtt; } ;


 int GEM_BUG_ON (int ) ;
 struct i915_vma* READ_ONCE (int ) ;
 int fence_write (struct i915_fence_reg*,struct i915_vma*) ;
 int i915_gem_object_is_tiled (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void i915_gem_restore_fences(struct drm_i915_private *i915)
{
 int i;

 rcu_read_lock();
 for (i = 0; i < i915->ggtt.num_fences; i++) {
  struct i915_fence_reg *reg = &i915->ggtt.fence_regs[i];
  struct i915_vma *vma = READ_ONCE(reg->vma);

  GEM_BUG_ON(vma && vma->fence != reg);





  if (vma && !i915_gem_object_is_tiled(vma->obj))
   vma = ((void*)0);

  fence_write(reg, vma);
 }
 rcu_read_unlock();
}
