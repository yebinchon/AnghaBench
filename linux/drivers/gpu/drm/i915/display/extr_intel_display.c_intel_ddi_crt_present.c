
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_crt_support; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;


 int DDI_A_4_LANES ;
 int DDI_BUF_CTL (int ) ;
 scalar_t__ HAS_PCH_LPT_H (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BDW_ULT (struct drm_i915_private*) ;
 scalar_t__ IS_HSW_ULT (struct drm_i915_private*) ;
 int PORT_A ;
 int SFUSE_STRAP ;
 int SFUSE_STRAP_CRT_DISABLED ;

__attribute__((used)) static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) >= 9)
  return 0;

 if (IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
  return 0;

 if (HAS_PCH_LPT_H(dev_priv) &&
     I915_READ(SFUSE_STRAP) & SFUSE_STRAP_CRT_DISABLED)
  return 0;


 if (I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
  return 0;

 if (!dev_priv->vbt.int_crt_support)
  return 0;

 return 1;
}
