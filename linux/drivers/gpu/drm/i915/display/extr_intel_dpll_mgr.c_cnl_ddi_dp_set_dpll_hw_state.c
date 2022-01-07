
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cfgcr0; } ;
struct intel_crtc_state {int port_clock; TYPE_1__ dpll_hw_state; } ;


 int DPLL_CFGCR0_LINK_RATE_1080 ;
 int DPLL_CFGCR0_LINK_RATE_1350 ;
 int DPLL_CFGCR0_LINK_RATE_1620 ;
 int DPLL_CFGCR0_LINK_RATE_2160 ;
 int DPLL_CFGCR0_LINK_RATE_2700 ;
 int DPLL_CFGCR0_LINK_RATE_3240 ;
 int DPLL_CFGCR0_LINK_RATE_4050 ;
 int DPLL_CFGCR0_LINK_RATE_810 ;
 int DPLL_CFGCR0_SSC_ENABLE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static bool
cnl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
{
 u32 cfgcr0;

 cfgcr0 = DPLL_CFGCR0_SSC_ENABLE;

 switch (crtc_state->port_clock / 2) {
 case 81000:
  cfgcr0 |= DPLL_CFGCR0_LINK_RATE_810;
  break;
 case 135000:
  cfgcr0 |= DPLL_CFGCR0_LINK_RATE_1350;
  break;
 case 270000:
  cfgcr0 |= DPLL_CFGCR0_LINK_RATE_2700;
  break;

 case 162000:
  cfgcr0 |= DPLL_CFGCR0_LINK_RATE_1620;
  break;
 case 108000:
  cfgcr0 |= DPLL_CFGCR0_LINK_RATE_1080;
  break;
 case 216000:
  cfgcr0 |= DPLL_CFGCR0_LINK_RATE_2160;
  break;
 case 324000:

  cfgcr0 |= DPLL_CFGCR0_LINK_RATE_3240;
  break;
 case 405000:

  cfgcr0 |= DPLL_CFGCR0_LINK_RATE_4050;
  break;
 }

 memset(&crtc_state->dpll_hw_state, 0,
        sizeof(crtc_state->dpll_hw_state));

 crtc_state->dpll_hw_state.cfgcr0 = cfgcr0;

 return 1;
}
