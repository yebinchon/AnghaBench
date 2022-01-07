
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int vco; int cdclk; int bypass; } ;
struct TYPE_3__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;


 int BXT_CDCLK_CD2X_DIV_SEL_MASK ;
 int BXT_CDCLK_CD2X_PIPE_NONE ;
 int BXT_CDCLK_SSA_PRECHARGE_ENABLE ;
 int CDCLK_CTL ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int intel_dump_cdclk_state (TYPE_2__*,char*) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 int skl_cdclk_decimal (int) ;

__attribute__((used)) static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
{
 u32 cdctl, expected;

 intel_update_cdclk(dev_priv);
 intel_dump_cdclk_state(&dev_priv->cdclk.hw, "Current CDCLK");

 if (dev_priv->cdclk.hw.vco == 0 ||
     dev_priv->cdclk.hw.cdclk == dev_priv->cdclk.hw.bypass)
  goto sanitize;







 cdctl = I915_READ(CDCLK_CTL);





 cdctl &= ~BXT_CDCLK_CD2X_PIPE_NONE;

 expected = (cdctl & BXT_CDCLK_CD2X_DIV_SEL_MASK) |
  skl_cdclk_decimal(dev_priv->cdclk.hw.cdclk);




 if (dev_priv->cdclk.hw.cdclk >= 500000)
  expected |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;

 if (cdctl == expected)

  return;

sanitize:
 DRM_DEBUG_KMS("Sanitizing cdclk programmed by pre-os\n");


 dev_priv->cdclk.hw.cdclk = 0;


 dev_priv->cdclk.hw.vco = -1;
}
