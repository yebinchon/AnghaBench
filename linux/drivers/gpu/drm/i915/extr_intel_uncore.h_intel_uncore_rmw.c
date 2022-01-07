
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;


 int intel_uncore_read (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static inline void intel_uncore_rmw(struct intel_uncore *uncore,
        i915_reg_t reg, u32 clear, u32 set)
{
 u32 val;

 val = intel_uncore_read(uncore, reg);
 val &= ~clear;
 val |= set;
 intel_uncore_write(uncore, reg, val);
}
