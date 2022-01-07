
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int HSW_MBVID2_MISR0 ;
 int HSW_MBVID2_NOA0 ;
 int HSW_MBVID2_NOA9 ;
 scalar_t__ gen7_is_valid_mux_addr (struct drm_i915_private*,int) ;
 int i915_mmio_reg_offset (int ) ;

__attribute__((used)) static bool hsw_is_valid_mux_addr(struct drm_i915_private *dev_priv, u32 addr)
{
 return gen7_is_valid_mux_addr(dev_priv, addr) ||
  (addr >= 0x25100 && addr <= 0x2FF90) ||
  (addr >= i915_mmio_reg_offset(HSW_MBVID2_NOA0) &&
   addr <= i915_mmio_reg_offset(HSW_MBVID2_NOA9)) ||
  addr == i915_mmio_reg_offset(HSW_MBVID2_MISR0);
}
