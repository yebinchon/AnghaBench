
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CNP_PWM_CGE_GATING_DISABLE ;
 int HAS_PCH_CNP (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int SOUTH_DSPCLK_GATE_D ;

__attribute__((used)) static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
{
 if (!HAS_PCH_CNP(dev_priv))
  return;


 I915_WRITE(SOUTH_DSPCLK_GATE_D, I915_READ(SOUTH_DSPCLK_GATE_D) |
     CNP_PWM_CGE_GATING_DISABLE);
}
