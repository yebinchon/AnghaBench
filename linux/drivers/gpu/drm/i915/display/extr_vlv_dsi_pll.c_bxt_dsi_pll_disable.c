
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int BXT_DSI_PLL_DO_ENABLE ;
 int BXT_DSI_PLL_ENABLE ;
 int BXT_DSI_PLL_LOCKED ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;

void bxt_dsi_pll_disable(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 val;

 DRM_DEBUG_KMS("\n");

 val = I915_READ(BXT_DSI_PLL_ENABLE);
 val &= ~BXT_DSI_PLL_DO_ENABLE;
 I915_WRITE(BXT_DSI_PLL_ENABLE, val);





 if (intel_de_wait_for_clear(dev_priv, BXT_DSI_PLL_ENABLE,
        BXT_DSI_PLL_LOCKED, 1))
  DRM_ERROR("Timeout waiting for PLL lock deassertion\n");
}
