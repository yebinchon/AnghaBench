
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int dummy; } ;


 int GEM_BUG_ON (int) ;
 unsigned int __EXEC_OBJECT_HAS_FENCE ;
 unsigned int __EXEC_OBJECT_HAS_PIN ;
 int __i915_vma_unpin (struct i915_vma*) ;
 int __i915_vma_unpin_fence (struct i915_vma*) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static inline void __eb_unreserve_vma(struct i915_vma *vma, unsigned int flags)
{
 GEM_BUG_ON(!(flags & __EXEC_OBJECT_HAS_PIN));

 if (unlikely(flags & __EXEC_OBJECT_HAS_FENCE))
  __i915_vma_unpin_fence(vma);

 __i915_vma_unpin(vma);
}
