
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int BXT_GMBUS_GATING_DIS ;
 int GEN9_CLKGATE_DIS_4 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;

__attribute__((used)) static void bxt_gmbus_clock_gating(struct drm_i915_private *dev_priv,
       bool enable)
{
 u32 val;

 val = I915_READ(GEN9_CLKGATE_DIS_4);
 if (!enable)
  val |= BXT_GMBUS_GATING_DIS;
 else
  val &= ~BXT_GMBUS_GATING_DIS;
 I915_WRITE(GEN9_CLKGATE_DIS_4, val);
}
