
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int flags; } ;


 int GEM_BUG_ON (int) ;
 int I915_VMA_GGTT_WRITE ;
 int i915_vma_is_ggtt (struct i915_vma*) ;

__attribute__((used)) static inline void i915_vma_set_ggtt_write(struct i915_vma *vma)
{
 GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 vma->flags |= I915_VMA_GGTT_WRITE;
}
