
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int port_clock; int shared_dpll; } ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;



 int PORT_CLK_SEL_MASK ;



 int SPLL_CTL ;
 int SPLL_FREQ_1350MHz ;
 int SPLL_FREQ_2700MHz ;
 int SPLL_FREQ_810MHz ;
 int SPLL_FREQ_MASK ;
 int WARN (int,char*) ;
 int WRPLL_CTL (int) ;
 int ddi_dotclock_get (struct intel_crtc_state*) ;
 int hsw_ddi_calc_wrpll_link (struct drm_i915_private*,int ) ;
 int hsw_pll_to_ddi_pll_sel (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void hsw_ddi_clock_get(struct intel_encoder *encoder,
         struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 int link_clock = 0;
 u32 val, pll;

 val = hsw_pll_to_ddi_pll_sel(pipe_config->shared_dpll);
 switch (val & PORT_CLK_SEL_MASK) {
 case 131:
  link_clock = 81000;
  break;
 case 133:
  link_clock = 135000;
  break;
 case 132:
  link_clock = 270000;
  break;
 case 129:
  link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(0));
  break;
 case 128:
  link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(1));
  break;
 case 130:
  pll = I915_READ(SPLL_CTL) & SPLL_FREQ_MASK;
  if (pll == SPLL_FREQ_810MHz)
   link_clock = 81000;
  else if (pll == SPLL_FREQ_1350MHz)
   link_clock = 135000;
  else if (pll == SPLL_FREQ_2700MHz)
   link_clock = 270000;
  else {
   WARN(1, "bad spll freq\n");
   return;
  }
  break;
 default:
  WARN(1, "bad port clock sel\n");
  return;
 }

 pipe_config->port_clock = link_clock * 2;

 ddi_dotclock_get(pipe_config);
}
