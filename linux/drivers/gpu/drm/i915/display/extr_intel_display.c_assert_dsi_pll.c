
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CCK_REG_DSI_PLL_CONTROL ;
 int DSI_PLL_VCO_EN ;
 int I915_STATE_WARN (int,char*,int ,int ) ;
 int onoff (int) ;
 int vlv_cck_get (struct drm_i915_private*) ;
 int vlv_cck_put (struct drm_i915_private*) ;
 int vlv_cck_read (struct drm_i915_private*,int ) ;

void assert_dsi_pll(struct drm_i915_private *dev_priv, bool state)
{
 u32 val;
 bool cur_state;

 vlv_cck_get(dev_priv);
 val = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_CONTROL);
 vlv_cck_put(dev_priv);

 cur_state = val & DSI_PLL_VCO_EN;
 I915_STATE_WARN(cur_state != state,
      "DSI PLL state assertion failure (expected %s, current %s)\n",
   onoff(state), onoff(cur_state));
}
