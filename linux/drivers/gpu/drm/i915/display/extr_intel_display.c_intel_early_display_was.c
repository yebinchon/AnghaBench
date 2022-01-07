
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CHICKEN_PAR1_1 ;
 int DARBF_GATING_DIS ;
 int FORCE_ARB_IDLE_PLANES ;
 int GEN9_CLKGATE_DIS_0 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;

__attribute__((used)) static void intel_early_display_was(struct drm_i915_private *dev_priv)
{

 if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
  I915_WRITE(GEN9_CLKGATE_DIS_0, I915_READ(GEN9_CLKGATE_DIS_0) |
      DARBF_GATING_DIS);

 if (IS_HASWELL(dev_priv)) {




  I915_WRITE(CHICKEN_PAR1_1,
      I915_READ(CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
 }
}
