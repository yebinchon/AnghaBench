
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int port_clock; struct intel_shared_dpll* shared_dpll; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int DDI_CLK_SEL_MG ;
 int DDI_CLK_SEL_NONE ;
 int DDI_CLK_SEL_TBT_162 ;
 int DDI_CLK_SEL_TBT_270 ;
 int DDI_CLK_SEL_TBT_540 ;
 int DDI_CLK_SEL_TBT_810 ;





 int MISSING_CASE (int const) ;

__attribute__((used)) static u32 icl_pll_to_ddi_clk_sel(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state)
{
 const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 int clock = crtc_state->port_clock;
 const enum intel_dpll_id id = pll->info->id;

 switch (id) {
 default:




  MISSING_CASE(id);
  return DDI_CLK_SEL_NONE;
 case 128:
  switch (clock) {
  case 162000:
   return DDI_CLK_SEL_TBT_162;
  case 270000:
   return DDI_CLK_SEL_TBT_270;
  case 540000:
   return DDI_CLK_SEL_TBT_540;
  case 810000:
   return DDI_CLK_SEL_TBT_810;
  default:
   MISSING_CASE(clock);
   return DDI_CLK_SEL_NONE;
  }
 case 132:
 case 131:
 case 130:
 case 129:
  return DDI_CLK_SEL_MG;
 }
}
