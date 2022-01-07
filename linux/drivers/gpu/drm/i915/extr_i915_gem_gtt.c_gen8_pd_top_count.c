
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {unsigned long long total; int top; } ;


 unsigned int __gen8_pte_shift (int ) ;

__attribute__((used)) static inline unsigned int gen8_pd_top_count(const struct i915_address_space *vm)
{
 unsigned int shift = __gen8_pte_shift(vm->top);
 return (vm->total + (1ull << shift) - 1) >> shift;
}
