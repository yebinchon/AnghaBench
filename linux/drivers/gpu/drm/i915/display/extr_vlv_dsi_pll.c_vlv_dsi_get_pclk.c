
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
struct TYPE_3__ {int ctrl; int div; } ;
struct intel_crtc_state {TYPE_1__ dsi_pll; } ;
struct drm_i915_private {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int CCK_REG_DSI_PLL_CONTROL ;
 int CCK_REG_DSI_PLL_DIVIDER ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int DSI_PLL_LOCK ;
 int DSI_PLL_M1_DIV_MASK ;
 int DSI_PLL_M1_DIV_SHIFT ;
 int DSI_PLL_N1_DIV_MASK ;
 int DSI_PLL_N1_DIV_SHIFT ;
 int DSI_PLL_P1_POST_DIV_MASK ;
 int DSI_PLL_P1_POST_DIV_SHIFT ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 struct intel_dsi* enc_to_intel_dsi (TYPE_2__*) ;
 int* lfsr_converts ;
 int mipi_dsi_pixel_format_to_bpp (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 int vlv_cck_get (struct drm_i915_private*) ;
 int vlv_cck_put (struct drm_i915_private*) ;
 int vlv_cck_read (struct drm_i915_private*,int ) ;

u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
       struct intel_crtc_state *config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);
 int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 u32 dsi_clock, pclk;
 u32 pll_ctl, pll_div;
 u32 m = 0, p = 0, n;
 int refclk = IS_CHERRYVIEW(dev_priv) ? 100000 : 25000;
 int i;

 DRM_DEBUG_KMS("\n");

 vlv_cck_get(dev_priv);
 pll_ctl = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_CONTROL);
 pll_div = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_DIVIDER);
 vlv_cck_put(dev_priv);

 config->dsi_pll.ctrl = pll_ctl & ~DSI_PLL_LOCK;
 config->dsi_pll.div = pll_div;


 pll_ctl &= DSI_PLL_P1_POST_DIV_MASK;
 pll_ctl = pll_ctl >> (DSI_PLL_P1_POST_DIV_SHIFT - 2);


 n = (pll_div & DSI_PLL_N1_DIV_MASK) >> DSI_PLL_N1_DIV_SHIFT;
 n = 1 << n;


 pll_div &= DSI_PLL_M1_DIV_MASK;
 pll_div = pll_div >> DSI_PLL_M1_DIV_SHIFT;

 while (pll_ctl) {
  pll_ctl = pll_ctl >> 1;
  p++;
 }
 p--;

 if (!p) {
  DRM_ERROR("wrong P1 divisor\n");
  return 0;
 }

 for (i = 0; i < ARRAY_SIZE(lfsr_converts); i++) {
  if (lfsr_converts[i] == pll_div)
   break;
 }

 if (i == ARRAY_SIZE(lfsr_converts)) {
  DRM_ERROR("wrong m_seed programmed\n");
  return 0;
 }

 m = i + 62;

 dsi_clock = (m * refclk) / (p * n);

 pclk = DIV_ROUND_CLOSEST(dsi_clock * intel_dsi->lane_count, bpp);

 return pclk;
}
