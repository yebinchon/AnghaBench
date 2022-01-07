
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;


 int EINVAL ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int) ;

__attribute__((used)) static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
      i915_reg_t reg, u32 val,
      u32 mask, u32 expected_val)
{
 u32 reg_val;

 intel_uncore_write(uncore, reg, val);
 reg_val = intel_uncore_read(uncore, reg);

 return (reg_val & mask) != expected_val ? -EINVAL : 0;
}
