
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;
struct i915_address_space {int dummy; } ;


 int gen6_ppgtt_pin (int ) ;
 int i915_vm_to_ppgtt (struct i915_address_space*) ;
 struct i915_address_space* vm_alias (struct intel_context*) ;

__attribute__((used)) static int __context_pin_ppgtt(struct intel_context *ce)
{
 struct i915_address_space *vm;
 int err = 0;

 vm = vm_alias(ce);
 if (vm)
  err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)));

 return err;
}
