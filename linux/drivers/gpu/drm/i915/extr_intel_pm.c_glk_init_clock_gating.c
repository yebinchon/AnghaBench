
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CHICKEN_MISC_2 ;
 int GEN9_CLKGATE_DIS_0 ;
 int GLK_CL0_PWR_DOWN ;
 int GLK_CL1_PWR_DOWN ;
 int GLK_CL2_PWR_DOWN ;
 int GLK_REVID_A1 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GLK_REVID (struct drm_i915_private*,int ,int ) ;
 int PWM1_GATING_DIS ;
 int PWM2_GATING_DIS ;
 int gen9_init_clock_gating (struct drm_i915_private*) ;

__attribute__((used)) static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
{
 gen9_init_clock_gating(dev_priv);






 I915_WRITE(GEN9_CLKGATE_DIS_0, I915_READ(GEN9_CLKGATE_DIS_0) |
     PWM1_GATING_DIS | PWM2_GATING_DIS);


 if (IS_GLK_REVID(dev_priv, 0, GLK_REVID_A1)) {
  u32 val = I915_READ(CHICKEN_MISC_2);
  val &= ~(GLK_CL0_PWR_DOWN |
    GLK_CL1_PWR_DOWN |
    GLK_CL2_PWR_DOWN);
  I915_WRITE(CHICKEN_MISC_2, val);
 }

}
