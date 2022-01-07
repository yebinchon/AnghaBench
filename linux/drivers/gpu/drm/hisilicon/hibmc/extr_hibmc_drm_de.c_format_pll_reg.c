
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_display_panel_pll {int POD; int OD; int N; int M; int member_0; } ;


 unsigned int HIBMC_FIELD (int ,int) ;
 int HIBMC_PLL_CTRL_BYPASS ;
 int HIBMC_PLL_CTRL_INPUT ;
 int HIBMC_PLL_CTRL_M ;
 int HIBMC_PLL_CTRL_N ;
 int HIBMC_PLL_CTRL_OD ;
 int HIBMC_PLL_CTRL_POD ;
 int HIBMC_PLL_CTRL_POWER ;

__attribute__((used)) static unsigned int format_pll_reg(void)
{
 unsigned int pllreg = 0;
 struct hibmc_display_panel_pll pll = {0};







 pllreg |= HIBMC_FIELD(HIBMC_PLL_CTRL_BYPASS, 0);
 pllreg |= HIBMC_FIELD(HIBMC_PLL_CTRL_POWER, 1);
 pllreg |= HIBMC_FIELD(HIBMC_PLL_CTRL_INPUT, 0);
 pllreg |= HIBMC_FIELD(HIBMC_PLL_CTRL_POD, pll.POD);
 pllreg |= HIBMC_FIELD(HIBMC_PLL_CTRL_OD, pll.OD);
 pllreg |= HIBMC_FIELD(HIBMC_PLL_CTRL_N, pll.N);
 pllreg |= HIBMC_FIELD(HIBMC_PLL_CTRL_M, pll.M);

 return pllreg;
}
