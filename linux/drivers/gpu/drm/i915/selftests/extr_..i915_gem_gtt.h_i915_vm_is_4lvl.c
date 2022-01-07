
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {int total; } ;



__attribute__((used)) static inline bool
i915_vm_is_4lvl(const struct i915_address_space *vm)
{
 return (vm->total - 1) >> 32;
}
