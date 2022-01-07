
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ gen7_is_valid_mux_addr (struct drm_i915_private*,int) ;

__attribute__((used)) static bool chv_is_valid_mux_addr(struct drm_i915_private *dev_priv, u32 addr)
{
 return gen7_is_valid_mux_addr(dev_priv, addr) ||
  (addr >= 0x182300 && addr <= 0x1823A4);
}
