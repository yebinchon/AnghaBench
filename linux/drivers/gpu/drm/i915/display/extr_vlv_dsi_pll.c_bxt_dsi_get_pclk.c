
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct intel_dsi {int lane_count; int pixel_format; } ;
struct TYPE_3__ {int ctrl; } ;
struct intel_crtc_state {TYPE_1__ dsi_pll; } ;
struct drm_i915_private {int dummy; } ;


 int BXT_DSI_PLL_CTL ;
 int BXT_DSI_PLL_RATIO_MASK ;
 int BXT_REF_CLOCK_KHZ ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int DRM_DEBUG_DRIVER (char*,int) ;
 int I915_READ (int ) ;
 struct intel_dsi* enc_to_intel_dsi (TYPE_2__*) ;
 int mipi_dsi_pixel_format_to_bpp (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
       struct intel_crtc_state *config)
{
 u32 pclk;
 u32 dsi_clk;
 u32 dsi_ratio;
 struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);

 config->dsi_pll.ctrl = I915_READ(BXT_DSI_PLL_CTL);

 dsi_ratio = config->dsi_pll.ctrl & BXT_DSI_PLL_RATIO_MASK;

 dsi_clk = (dsi_ratio * BXT_REF_CLOCK_KHZ) / 2;

 pclk = DIV_ROUND_CLOSEST(dsi_clk * intel_dsi->lane_count, bpp);

 DRM_DEBUG_DRIVER("Calculated pclk=%u\n", pclk);
 return pclk;
}
