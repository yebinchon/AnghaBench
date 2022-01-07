
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i915_reg_t ;


 scalar_t__ i915_mmio_reg_offset (int ) ;

__attribute__((used)) static inline bool i915_mmio_reg_equal(i915_reg_t a, i915_reg_t b)
{
 return i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b);
}
