
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PCH_GMBUSUNIT_CLOCK_GATE_DISABLE ;
 int SOUTH_DSPCLK_GATE_D ;

__attribute__((used)) static void pch_gmbus_clock_gating(struct drm_i915_private *dev_priv,
       bool enable)
{
 u32 val;

 val = I915_READ(SOUTH_DSPCLK_GATE_D);
 if (!enable)
  val |= PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
 else
  val &= ~PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
 I915_WRITE(SOUTH_DSPCLK_GATE_D, val);
}
