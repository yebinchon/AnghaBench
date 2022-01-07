
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct i915_address_space {int top; int total; } ;
struct TYPE_2__ {int pd; } ;


 int BIT_ULL (int) ;
 int GEM_BUG_ON (int) ;
 int GEN8_PTE_SHIFT ;
 int IS_ALIGNED (int,int ) ;
 int __gen8_ppgtt_alloc (struct i915_address_space*,int ,int*,int,int ) ;
 int __gen8_ppgtt_clear (struct i915_address_space*,int ,int,int,int ) ;
 TYPE_1__* i915_vm_to_ppgtt (struct i915_address_space*) ;
 int range_overflows (int,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gen8_ppgtt_alloc(struct i915_address_space *vm,
       u64 start, u64 length)
{
 u64 from;
 int err;

 GEM_BUG_ON(!IS_ALIGNED(start, BIT_ULL(GEN8_PTE_SHIFT)));
 GEM_BUG_ON(!IS_ALIGNED(length, BIT_ULL(GEN8_PTE_SHIFT)));
 GEM_BUG_ON(range_overflows(start, length, vm->total));

 start >>= GEN8_PTE_SHIFT;
 length >>= GEN8_PTE_SHIFT;
 GEM_BUG_ON(length == 0);
 from = start;

 err = __gen8_ppgtt_alloc(vm, i915_vm_to_ppgtt(vm)->pd,
     &start, start + length, vm->top);
 if (unlikely(err && from != start))
  __gen8_ppgtt_clear(vm, i915_vm_to_ppgtt(vm)->pd,
       from, start, vm->top);

 return err;
}
