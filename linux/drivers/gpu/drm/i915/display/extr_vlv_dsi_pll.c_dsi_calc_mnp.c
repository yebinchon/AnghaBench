
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrl; int div; } ;
struct intel_crtc_state {TYPE_1__ dsi_pll; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int DSI_PLL_M1_DIV_SHIFT ;
 int DSI_PLL_N1_DIV_SHIFT ;
 unsigned int DSI_PLL_P1_POST_DIV_SHIFT ;
 int ECHRNG ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 int abs (int) ;
 int ffs (unsigned int) ;
 scalar_t__* lfsr_converts ;

__attribute__((used)) static int dsi_calc_mnp(struct drm_i915_private *dev_priv,
   struct intel_crtc_state *config,
   int target_dsi_clk)
{
 unsigned int m_min, m_max, p_min = 2, p_max = 6;
 unsigned int m, n, p;
 unsigned int calc_m, calc_p;
 int delta, ref_clk;


 if (target_dsi_clk < 300000 || target_dsi_clk > 1150000) {
  DRM_ERROR("DSI CLK Out of Range\n");
  return -ECHRNG;
 }

 if (IS_CHERRYVIEW(dev_priv)) {
  ref_clk = 100000;
  n = 4;
  m_min = 70;
  m_max = 96;
 } else {
  ref_clk = 25000;
  n = 1;
  m_min = 62;
  m_max = 92;
 }

 calc_p = p_min;
 calc_m = m_min;
 delta = abs(target_dsi_clk - (m_min * ref_clk) / (p_min * n));

 for (m = m_min; m <= m_max && delta; m++) {
  for (p = p_min; p <= p_max && delta; p++) {




   int calc_dsi_clk = (m * ref_clk) / (p * n);
   int d = abs(target_dsi_clk - calc_dsi_clk);
   if (d < delta) {
    delta = d;
    calc_m = m;
    calc_p = p;
   }
  }
 }


 config->dsi_pll.ctrl = 1 << (DSI_PLL_P1_POST_DIV_SHIFT + calc_p - 2);
 config->dsi_pll.div =
  (ffs(n) - 1) << DSI_PLL_N1_DIV_SHIFT |
  (u32)lfsr_converts[calc_m - 62] << DSI_PLL_M1_DIV_SHIFT;

 return 0;
}
