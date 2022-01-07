
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int flags; } ;


 int I915_VMA_GGTT_WRITE ;

__attribute__((used)) static inline bool i915_vma_has_ggtt_write(const struct i915_vma *vma)
{
 return vma->flags & I915_VMA_GGTT_WRITE;
}
