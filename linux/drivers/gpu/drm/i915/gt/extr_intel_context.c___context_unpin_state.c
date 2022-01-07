
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int dummy; } ;


 int __i915_vma_unpin (struct i915_vma*) ;
 int i915_vma_make_shrinkable (struct i915_vma*) ;

__attribute__((used)) static void __context_unpin_state(struct i915_vma *vma)
{
 __i915_vma_unpin(vma);
 i915_vma_make_shrinkable(vma);
}
