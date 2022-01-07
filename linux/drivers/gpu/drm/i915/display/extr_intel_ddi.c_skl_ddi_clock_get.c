
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_dpll_hw_state {int ctrl1; } ;
struct intel_crtc_state {int port_clock; struct intel_dpll_hw_state dpll_hw_state; } ;


 int DPLL_CTRL1_HDMI_MODE (int ) ;






 int DPLL_CTRL1_LINK_RATE_MASK (int ) ;
 int DPLL_CTRL1_LINK_RATE_SHIFT (int ) ;
 int WARN (int,char*) ;
 int ddi_dotclock_get (struct intel_crtc_state*) ;
 int skl_calc_wrpll_link (struct intel_dpll_hw_state*) ;

__attribute__((used)) static void skl_ddi_clock_get(struct intel_encoder *encoder,
         struct intel_crtc_state *pipe_config)
{
 struct intel_dpll_hw_state *pll_state = &pipe_config->dpll_hw_state;
 int link_clock;





 if (pll_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0)) {
  link_clock = skl_calc_wrpll_link(pll_state);
 } else {
  link_clock = pll_state->ctrl1 & DPLL_CTRL1_LINK_RATE_MASK(0);
  link_clock >>= DPLL_CTRL1_LINK_RATE_SHIFT(0);

  switch (link_clock) {
  case 128:
   link_clock = 81000;
   break;
  case 133:
   link_clock = 108000;
   break;
  case 132:
   link_clock = 135000;
   break;
  case 131:
   link_clock = 162000;
   break;
  case 130:
   link_clock = 216000;
   break;
  case 129:
   link_clock = 270000;
   break;
  default:
   WARN(1, "Unsupported link rate\n");
   break;
  }
  link_clock *= 2;
 }

 pipe_config->port_clock = link_clock;

 ddi_dotclock_get(pipe_config);
}
