
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct i915_address_space *
i915_vm_get(struct i915_address_space *vm)
{
 kref_get(&vm->ref);
 return vm;
}
