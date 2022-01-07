
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dpll_hw_state; int port_clock; } ;


 int bxt_calc_pll_link (int *) ;
 int ddi_dotclock_get (struct intel_crtc_state*) ;

__attribute__((used)) static void bxt_ddi_clock_get(struct intel_encoder *encoder,
         struct intel_crtc_state *pipe_config)
{
 pipe_config->port_clock =
  bxt_calc_pll_link(&pipe_config->dpll_hw_state);

 ddi_dotclock_get(pipe_config);
}
