
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrl1; } ;
struct intel_crtc_state {int port_clock; TYPE_1__ dpll_hw_state; } ;


 int DPLL_CTRL1_LINK_RATE (int ,int ) ;
 int DPLL_CTRL1_LINK_RATE_1080 ;
 int DPLL_CTRL1_LINK_RATE_1350 ;
 int DPLL_CTRL1_LINK_RATE_1620 ;
 int DPLL_CTRL1_LINK_RATE_2160 ;
 int DPLL_CTRL1_LINK_RATE_2700 ;
 int DPLL_CTRL1_LINK_RATE_810 ;
 int DPLL_CTRL1_OVERRIDE (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static bool
skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
{
 u32 ctrl1;





 ctrl1 = DPLL_CTRL1_OVERRIDE(0);
 switch (crtc_state->port_clock / 2) {
 case 81000:
  ctrl1 |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_810, 0);
  break;
 case 135000:
  ctrl1 |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_1350, 0);
  break;
 case 270000:
  ctrl1 |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_2700, 0);
  break;

 case 162000:
  ctrl1 |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_1620, 0);
  break;
 case 108000:
  ctrl1 |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_1080, 0);
  break;
 case 216000:
  ctrl1 |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_2160, 0);
  break;
 }

 memset(&crtc_state->dpll_hw_state, 0,
        sizeof(crtc_state->dpll_hw_state));

 crtc_state->dpll_hw_state.ctrl1 = ctrl1;

 return 1;
}
