
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DC_STATE_EN ;
 int DC_STATE_EN_DC9 ;
 int DC_STATE_EN_UPTO_DC5 ;
 int HSW_PWR_WELL_CTL2 ;
 int HSW_PWR_WELL_CTL_REQ (int ) ;
 int I915_READ (int ) ;
 int SKL_PW_CTL_IDX_PW_2 ;
 int WARN_ONCE (int,char*) ;
 int intel_irqs_enabled (struct drm_i915_private*) ;

__attribute__((used)) static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
{
 WARN_ONCE((I915_READ(DC_STATE_EN) & DC_STATE_EN_DC9),
    "DC9 already programmed to be enabled.\n");
 WARN_ONCE(I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5,
    "DC5 still not disabled to enable DC9.\n");
 WARN_ONCE(I915_READ(HSW_PWR_WELL_CTL2) &
    HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
    "Power well 2 on.\n");
 WARN_ONCE(intel_irqs_enabled(dev_priv),
    "Interrupts not disabled yet.\n");
}
