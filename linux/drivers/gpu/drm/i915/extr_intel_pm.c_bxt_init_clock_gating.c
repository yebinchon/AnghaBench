
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ ;
 int GEN8_SDEUNIT_CLOCK_GATE_DISABLE ;
 int GEN8_UCGCTL6 ;
 int GEN9_CLKGATE_DIS_0 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int MMIO_TIMEOUT_US (int) ;
 int PWM1_GATING_DIS ;
 int PWM2_GATING_DIS ;
 int RM_TIMEOUT ;
 int gen9_init_clock_gating (struct drm_i915_private*) ;

__attribute__((used)) static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
{
 gen9_init_clock_gating(dev_priv);


 I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
     GEN8_SDEUNIT_CLOCK_GATE_DISABLE);





 I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
     GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);





 I915_WRITE(GEN9_CLKGATE_DIS_0, I915_READ(GEN9_CLKGATE_DIS_0) |
     PWM1_GATING_DIS | PWM2_GATING_DIS);







 I915_WRITE(RM_TIMEOUT, MMIO_TIMEOUT_US(950));
}
