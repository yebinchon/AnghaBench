
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;


 int NOA_CONFIG (int) ;
 int RPM_CONFIG0 ;
 int WAIT_FOR_RC6_EXIT ;
 scalar_t__ gen7_is_valid_mux_addr (struct drm_i915_private*,scalar_t__) ;
 scalar_t__ i915_mmio_reg_offset (int ) ;

__attribute__((used)) static bool gen8_is_valid_mux_addr(struct drm_i915_private *dev_priv, u32 addr)
{
 return gen7_is_valid_mux_addr(dev_priv, addr) ||
  addr == i915_mmio_reg_offset(WAIT_FOR_RC6_EXIT) ||
  (addr >= i915_mmio_reg_offset(RPM_CONFIG0) &&
   addr <= i915_mmio_reg_offset(NOA_CONFIG(8)));
}
