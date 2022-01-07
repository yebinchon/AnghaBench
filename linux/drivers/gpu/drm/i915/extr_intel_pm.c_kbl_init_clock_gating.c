
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GEN6_GAMUNIT_CLOCK_GATE_DISABLE ;
 int GEN6_UCGCTL1 ;
 int GEN8_SDEUNIT_CLOCK_GATE_DISABLE ;
 int GEN8_UCGCTL6 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ILK_DPFC_CHICKEN ;
 int ILK_DPFC_NUKE_ON_ANY_MODIFICATION ;
 scalar_t__ IS_KBL_REVID (struct drm_i915_private*,int ,int ) ;
 int KBL_REVID_B0 ;
 int gen9_init_clock_gating (struct drm_i915_private*) ;

__attribute__((used)) static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
{
 gen9_init_clock_gating(dev_priv);


 if (IS_KBL_REVID(dev_priv, 0, KBL_REVID_B0))
  I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
      GEN8_SDEUNIT_CLOCK_GATE_DISABLE);


 if (IS_KBL_REVID(dev_priv, 0, KBL_REVID_B0))
  I915_WRITE(GEN6_UCGCTL1, I915_READ(GEN6_UCGCTL1) |
      GEN6_GAMUNIT_CLOCK_GATE_DISABLE);


 I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
     ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
}
