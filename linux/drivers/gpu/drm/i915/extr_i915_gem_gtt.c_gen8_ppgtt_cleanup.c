
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ppgtt {int pd; } ;
struct i915_address_space {int top; int i915; } ;


 int __gen8_ppgtt_cleanup (struct i915_address_space*,int ,int ,int ) ;
 int free_scratch (struct i915_address_space*) ;
 int gen8_pd_top_count (struct i915_address_space*) ;
 int gen8_ppgtt_notify_vgt (struct i915_ppgtt*,int) ;
 struct i915_ppgtt* i915_vm_to_ppgtt (struct i915_address_space*) ;
 scalar_t__ intel_vgpu_active (int ) ;

__attribute__((used)) static void gen8_ppgtt_cleanup(struct i915_address_space *vm)
{
 struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);

 if (intel_vgpu_active(vm->i915))
  gen8_ppgtt_notify_vgt(ppgtt, 0);

 __gen8_ppgtt_cleanup(vm, ppgtt->pd, gen8_pd_top_count(vm), vm->top);
 free_scratch(vm);
}
