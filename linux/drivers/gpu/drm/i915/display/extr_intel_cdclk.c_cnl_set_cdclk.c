
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_cdclk_state {int cdclk; int vco; int voltage_level; } ;
struct TYPE_3__ {int bypass; int vco; int voltage_level; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BXT_CDCLK_CD2X_DIV_SEL_1 ;
 int BXT_CDCLK_CD2X_DIV_SEL_2 ;
 int BXT_CDCLK_CD2X_PIPE (int) ;
 int BXT_CDCLK_CD2X_PIPE_NONE ;
 int CDCLK_CTL ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int DRM_ERROR (char*,int) ;
 int I915_WRITE (int ,int) ;
 int INVALID_PIPE ;
 int SKL_CDCLK_PREPARE_FOR_CHANGE ;
 int SKL_CDCLK_READY_FOR_CHANGE ;
 int SKL_PCODE_CDCLK_CONTROL ;
 int WARN_ON (int) ;
 int cnl_cdclk_pll_disable (struct drm_i915_private*) ;
 int cnl_cdclk_pll_enable (struct drm_i915_private*,int) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int) ;
 int sandybridge_pcode_write (struct drm_i915_private*,int ,int ) ;
 int skl_cdclk_decimal (int) ;
 int skl_pcode_request (struct drm_i915_private*,int ,int ,int ,int ,int) ;

__attribute__((used)) static void cnl_set_cdclk(struct drm_i915_private *dev_priv,
     const struct intel_cdclk_state *cdclk_state,
     enum pipe pipe)
{
 int cdclk = cdclk_state->cdclk;
 int vco = cdclk_state->vco;
 u32 val, divider;
 int ret;

 ret = skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
    SKL_CDCLK_PREPARE_FOR_CHANGE,
    SKL_CDCLK_READY_FOR_CHANGE,
    SKL_CDCLK_READY_FOR_CHANGE, 3);
 if (ret) {
  DRM_ERROR("Failed to inform PCU about cdclk change (%d)\n",
     ret);
  return;
 }


 switch (DIV_ROUND_CLOSEST(vco, cdclk)) {
 default:
  WARN_ON(cdclk != dev_priv->cdclk.hw.bypass);
  WARN_ON(vco != 0);

 case 2:
  divider = BXT_CDCLK_CD2X_DIV_SEL_1;
  break;
 case 4:
  divider = BXT_CDCLK_CD2X_DIV_SEL_2;
  break;
 }

 if (dev_priv->cdclk.hw.vco != 0 &&
     dev_priv->cdclk.hw.vco != vco)
  cnl_cdclk_pll_disable(dev_priv);

 if (dev_priv->cdclk.hw.vco != vco)
  cnl_cdclk_pll_enable(dev_priv, vco);

 val = divider | skl_cdclk_decimal(cdclk);
 if (pipe == INVALID_PIPE)
  val |= BXT_CDCLK_CD2X_PIPE_NONE;
 else
  val |= BXT_CDCLK_CD2X_PIPE(pipe);
 I915_WRITE(CDCLK_CTL, val);

 if (pipe != INVALID_PIPE)
  intel_wait_for_vblank(dev_priv, pipe);


 sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
    cdclk_state->voltage_level);

 intel_update_cdclk(dev_priv);





 dev_priv->cdclk.hw.voltage_level = cdclk_state->voltage_level;
}
