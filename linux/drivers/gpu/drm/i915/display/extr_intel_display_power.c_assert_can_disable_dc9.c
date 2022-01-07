
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DC_STATE_EN ;
 int DC_STATE_EN_UPTO_DC5 ;
 int I915_READ (int ) ;
 int WARN_ONCE (int,char*) ;
 int intel_irqs_enabled (struct drm_i915_private*) ;

__attribute__((used)) static void assert_can_disable_dc9(struct drm_i915_private *dev_priv)
{
 WARN_ONCE(intel_irqs_enabled(dev_priv),
    "Interrupts not disabled yet.\n");
 WARN_ONCE(I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5,
    "DC5 still not disabled.\n");
}
