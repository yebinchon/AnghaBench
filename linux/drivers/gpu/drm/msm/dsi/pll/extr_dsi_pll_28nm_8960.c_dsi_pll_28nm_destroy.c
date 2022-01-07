
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int dummy; } ;
struct dsi_pll_28nm {int num_clks; int clks; int pdev; } ;


 int msm_dsi_pll_helper_unregister_clks (int ,int ,int ) ;
 struct dsi_pll_28nm* to_pll_28nm (struct msm_dsi_pll*) ;

__attribute__((used)) static void dsi_pll_28nm_destroy(struct msm_dsi_pll *pll)
{
 struct dsi_pll_28nm *pll_28nm = to_pll_28nm(pll);

 msm_dsi_pll_helper_unregister_clks(pll_28nm->pdev,
     pll_28nm->clks, pll_28nm->num_clks);
}
