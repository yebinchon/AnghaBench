
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DSPCLK_GATE_D ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PNV_GMBUSUNIT_CLOCK_GATE_DISABLE ;

__attribute__((used)) static void pnv_gmbus_clock_gating(struct drm_i915_private *dev_priv,
       bool enable)
{
 u32 val;


 val = I915_READ(DSPCLK_GATE_D);
 if (!enable)
  val |= PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
 else
  val &= ~PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
 I915_WRITE(DSPCLK_GATE_D, val);
}
