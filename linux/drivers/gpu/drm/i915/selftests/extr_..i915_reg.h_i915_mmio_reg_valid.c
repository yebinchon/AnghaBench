
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i915_reg_t ;


 int INVALID_MMIO_REG ;
 int i915_mmio_reg_equal (int ,int ) ;

__attribute__((used)) static inline bool i915_mmio_reg_valid(i915_reg_t reg)
{
 return !i915_mmio_reg_equal(reg, INVALID_MMIO_REG);
}
