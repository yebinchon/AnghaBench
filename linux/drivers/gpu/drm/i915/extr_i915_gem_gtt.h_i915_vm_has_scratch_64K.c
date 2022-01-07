
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {scalar_t__ scratch_order; } ;


 int I915_GTT_PAGE_SIZE_64K ;
 scalar_t__ get_order (int ) ;

__attribute__((used)) static inline bool
i915_vm_has_scratch_64K(struct i915_address_space *vm)
{
 return vm->scratch_order == get_order(I915_GTT_PAGE_SIZE_64K);
}
