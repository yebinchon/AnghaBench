
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int vco; scalar_t__ cdclk; scalar_t__ bypass; } ;
struct TYPE_3__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;


 int CDCLK_CTL ;
 int CDCLK_FREQ_SEL_MASK ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int SWF_ILK (int) ;
 int intel_dump_cdclk_state (TYPE_2__*,char*) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 int skl_cdclk_decimal (scalar_t__) ;

__attribute__((used)) static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
{
 u32 cdctl, expected;






 if ((I915_READ(SWF_ILK(0x18)) & 0x00FFFFFF) == 0)
  goto sanitize;

 intel_update_cdclk(dev_priv);
 intel_dump_cdclk_state(&dev_priv->cdclk.hw, "Current CDCLK");


 if (dev_priv->cdclk.hw.vco == 0 ||
     dev_priv->cdclk.hw.cdclk == dev_priv->cdclk.hw.bypass)
  goto sanitize;







 cdctl = I915_READ(CDCLK_CTL);
 expected = (cdctl & CDCLK_FREQ_SEL_MASK) |
  skl_cdclk_decimal(dev_priv->cdclk.hw.cdclk);
 if (cdctl == expected)

  return;

sanitize:
 DRM_DEBUG_KMS("Sanitizing cdclk programmed by pre-os\n");


 dev_priv->cdclk.hw.cdclk = 0;

 dev_priv->cdclk.hw.vco = -1;
}
