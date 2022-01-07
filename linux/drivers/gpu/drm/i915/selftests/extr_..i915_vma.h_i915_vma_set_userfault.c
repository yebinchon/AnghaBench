
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int flags; } ;


 int GEM_BUG_ON (int) ;
 int I915_VMA_USERFAULT_BIT ;
 int __test_and_set_bit (int ,int *) ;
 int i915_vma_is_map_and_fenceable (struct i915_vma*) ;

__attribute__((used)) static inline bool i915_vma_set_userfault(struct i915_vma *vma)
{
 GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
 return __test_and_set_bit(I915_VMA_USERFAULT_BIT, &vma->flags);
}
