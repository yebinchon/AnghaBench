
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int CCK_REG_DSI_PLL_CONTROL ;
 int DRM_DEBUG_KMS (char*) ;
 int DSI_PLL_LDO_GATE ;
 int DSI_PLL_VCO_EN ;
 struct drm_i915_private* to_i915 (int ) ;
 int vlv_cck_get (struct drm_i915_private*) ;
 int vlv_cck_put (struct drm_i915_private*) ;
 int vlv_cck_read (struct drm_i915_private*,int ) ;
 int vlv_cck_write (struct drm_i915_private*,int ,int ) ;

void vlv_dsi_pll_disable(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 tmp;

 DRM_DEBUG_KMS("\n");

 vlv_cck_get(dev_priv);

 tmp = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_CONTROL);
 tmp &= ~DSI_PLL_VCO_EN;
 tmp |= DSI_PLL_LDO_GATE;
 vlv_cck_write(dev_priv, CCK_REG_DSI_PLL_CONTROL, tmp);

 vlv_cck_put(dev_priv);
}
