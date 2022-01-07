
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {scalar_t__ fence; } ;


 int __i915_vma_unpin_fence (struct i915_vma*) ;

__attribute__((used)) static inline void
i915_vma_unpin_fence(struct i915_vma *vma)
{

 if (vma->fence)
  __i915_vma_unpin_fence(vma);
}
