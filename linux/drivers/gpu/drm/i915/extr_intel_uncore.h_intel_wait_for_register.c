
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;


 int __intel_wait_for_register (struct intel_uncore*,int ,int ,int ,int,unsigned int,int *) ;

__attribute__((used)) static inline int
intel_wait_for_register(struct intel_uncore *uncore,
   i915_reg_t reg,
   u32 mask,
   u32 value,
   unsigned int timeout_ms)
{
 return __intel_wait_for_register(uncore, reg, mask, value, 2,
      timeout_ms, ((void*)0));
}
