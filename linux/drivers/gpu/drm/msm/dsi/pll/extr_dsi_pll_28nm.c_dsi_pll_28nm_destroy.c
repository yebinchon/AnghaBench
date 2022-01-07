
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_dsi_pll {int dummy; } ;
struct TYPE_2__ {scalar_t__ clk_num; int * clks; } ;
struct dsi_pll_28nm {TYPE_1__ clk_data; scalar_t__ num_clks; int ** provided_clks; int clks; int pdev; } ;


 int NUM_PROVIDED_CLKS ;
 int msm_dsi_pll_helper_unregister_clks (int ,int ,scalar_t__) ;
 struct dsi_pll_28nm* to_pll_28nm (struct msm_dsi_pll*) ;

__attribute__((used)) static void dsi_pll_28nm_destroy(struct msm_dsi_pll *pll)
{
 struct dsi_pll_28nm *pll_28nm = to_pll_28nm(pll);
 int i;

 msm_dsi_pll_helper_unregister_clks(pll_28nm->pdev,
     pll_28nm->clks, pll_28nm->num_clks);

 for (i = 0; i < NUM_PROVIDED_CLKS; i++)
  pll_28nm->provided_clks[i] = ((void*)0);

 pll_28nm->num_clks = 0;
 pll_28nm->clk_data.clks = ((void*)0);
 pll_28nm->clk_data.clk_num = 0;
}
