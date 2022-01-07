
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {int i915; } ;


 int INTEL_GEN (int ) ;
 int gen6_ppgtt_unpin_all (int ) ;
 int i915_vm_put (struct i915_address_space*) ;
 int i915_vm_to_ppgtt (struct i915_address_space*) ;

__attribute__((used)) static void set_ppgtt_barrier(void *data)
{
 struct i915_address_space *old = data;

 if (INTEL_GEN(old->i915) < 8)
  gen6_ppgtt_unpin_all(i915_vm_to_ppgtt(old));

 i915_vm_put(old);
}
