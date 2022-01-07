
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {int ref; } ;


 int i915_vm_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void i915_vm_put(struct i915_address_space *vm)
{
 kref_put(&vm->ref, i915_vm_release);
}
