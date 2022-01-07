
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_cdclk_state {int cdclk; int vco; int voltage_level; } ;
struct TYPE_3__ {int bypass; int vco; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BXT_CDCLK_CD2X_DIV_SEL_1 ;
 int BXT_CDCLK_CD2X_DIV_SEL_1_5 ;
 int BXT_CDCLK_CD2X_DIV_SEL_2 ;
 int BXT_CDCLK_CD2X_DIV_SEL_4 ;
 int BXT_CDCLK_CD2X_PIPE (int) ;
 int BXT_CDCLK_CD2X_PIPE_NONE ;
 int BXT_CDCLK_SSA_PRECHARGE_ENABLE ;
 int CDCLK_CTL ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int DRM_ERROR (char*,int,int) ;
 int HSW_PCODE_DE_WRITE_FREQ_REQ ;
 int I915_WRITE (int ,int) ;
 int INVALID_PIPE ;
 int IS_GEMINILAKE (struct drm_i915_private*) ;
 int WARN (int ,char*) ;
 int WARN_ON (int) ;
 int bxt_de_pll_disable (struct drm_i915_private*) ;
 int bxt_de_pll_enable (struct drm_i915_private*,int) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int) ;
 int sandybridge_pcode_write_timeout (struct drm_i915_private*,int ,int,int,int) ;
 int skl_cdclk_decimal (int) ;

__attribute__((used)) static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
     const struct intel_cdclk_state *cdclk_state,
     enum pipe pipe)
{
 int cdclk = cdclk_state->cdclk;
 int vco = cdclk_state->vco;
 u32 val, divider;
 int ret;


 switch (DIV_ROUND_CLOSEST(vco, cdclk)) {
 default:
  WARN_ON(cdclk != dev_priv->cdclk.hw.bypass);
  WARN_ON(vco != 0);

 case 2:
  divider = BXT_CDCLK_CD2X_DIV_SEL_1;
  break;
 case 3:
  WARN(IS_GEMINILAKE(dev_priv), "Unsupported divider\n");
  divider = BXT_CDCLK_CD2X_DIV_SEL_1_5;
  break;
 case 4:
  divider = BXT_CDCLK_CD2X_DIV_SEL_2;
  break;
 case 8:
  divider = BXT_CDCLK_CD2X_DIV_SEL_4;
  break;
 }






 ret = sandybridge_pcode_write_timeout(dev_priv,
           HSW_PCODE_DE_WRITE_FREQ_REQ,
           0x80000000, 150, 2);
 if (ret) {
  DRM_ERROR("PCode CDCLK freq change notify failed (err %d, freq %d)\n",
     ret, cdclk);
  return;
 }

 if (dev_priv->cdclk.hw.vco != 0 &&
     dev_priv->cdclk.hw.vco != vco)
  bxt_de_pll_disable(dev_priv);

 if (dev_priv->cdclk.hw.vco != vco)
  bxt_de_pll_enable(dev_priv, vco);

 val = divider | skl_cdclk_decimal(cdclk);
 if (pipe == INVALID_PIPE)
  val |= BXT_CDCLK_CD2X_PIPE_NONE;
 else
  val |= BXT_CDCLK_CD2X_PIPE(pipe);




 if (cdclk >= 500000)
  val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
 I915_WRITE(CDCLK_CTL, val);

 if (pipe != INVALID_PIPE)
  intel_wait_for_vblank(dev_priv, pipe);







 ret = sandybridge_pcode_write_timeout(dev_priv,
           HSW_PCODE_DE_WRITE_FREQ_REQ,
           cdclk_state->voltage_level, 150, 2);
 if (ret) {
  DRM_ERROR("PCode CDCLK freq set failed, (err %d, freq %d)\n",
     ret, cdclk);
  return;
 }

 intel_update_cdclk(dev_priv);
}
