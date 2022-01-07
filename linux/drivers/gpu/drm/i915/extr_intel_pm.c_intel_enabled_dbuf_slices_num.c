
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;


 int DBUF_CTL_S2 ;
 int DBUF_POWER_STATE ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv)
{
 u8 enabled_slices;


 enabled_slices = 1;


 if (INTEL_GEN(dev_priv) < 11)
  return enabled_slices;






 if (0 && I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE)
  enabled_slices++;

 return enabled_slices;
}
