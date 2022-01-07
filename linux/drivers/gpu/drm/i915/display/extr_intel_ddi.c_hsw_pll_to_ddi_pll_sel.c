
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct TYPE_2__ {int id; } ;
 int MISSING_CASE (int) ;
 int PORT_CLK_SEL_LCPLL_1350 ;
 int PORT_CLK_SEL_LCPLL_2700 ;
 int PORT_CLK_SEL_LCPLL_810 ;
 int PORT_CLK_SEL_NONE ;
 int PORT_CLK_SEL_SPLL ;
 int PORT_CLK_SEL_WRPLL1 ;
 int PORT_CLK_SEL_WRPLL2 ;

__attribute__((used)) static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
{
 switch (pll->info->id) {
 case 129:
  return PORT_CLK_SEL_WRPLL1;
 case 128:
  return PORT_CLK_SEL_WRPLL2;
 case 130:
  return PORT_CLK_SEL_SPLL;
 case 131:
  return PORT_CLK_SEL_LCPLL_810;
 case 133:
  return PORT_CLK_SEL_LCPLL_1350;
 case 132:
  return PORT_CLK_SEL_LCPLL_2700;
 default:
  MISSING_CASE(pll->info->id);
  return PORT_CLK_SEL_NONE;
 }
}
