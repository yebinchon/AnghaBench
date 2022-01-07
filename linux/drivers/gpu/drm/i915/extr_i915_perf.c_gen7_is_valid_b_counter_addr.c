
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;


 int OACEC0_0 ;
 int OACEC7_1 ;
 int OAREPORTTRIG1 ;
 int OAREPORTTRIG8 ;
 int OASTARTTRIG1 ;
 int OASTARTTRIG8 ;
 scalar_t__ i915_mmio_reg_offset (int ) ;

__attribute__((used)) static bool gen7_is_valid_b_counter_addr(struct drm_i915_private *dev_priv, u32 addr)
{
 return (addr >= i915_mmio_reg_offset(OASTARTTRIG1) &&
  addr <= i915_mmio_reg_offset(OASTARTTRIG8)) ||
  (addr >= i915_mmio_reg_offset(OAREPORTTRIG1) &&
   addr <= i915_mmio_reg_offset(OAREPORTTRIG8)) ||
  (addr >= i915_mmio_reg_offset(OACEC0_0) &&
   addr <= i915_mmio_reg_offset(OACEC7_1));
}
