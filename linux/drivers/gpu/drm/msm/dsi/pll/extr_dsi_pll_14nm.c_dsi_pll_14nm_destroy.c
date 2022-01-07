
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct msm_dsi_pll {int dummy; } ;
struct dsi_pll_14nm {int num_hws; int * hws; struct platform_device* pdev; } ;


 int clk_hw_unregister (int ) ;
 int of_clk_del_provider (int ) ;
 struct dsi_pll_14nm* to_pll_14nm (struct msm_dsi_pll*) ;

__attribute__((used)) static void dsi_pll_14nm_destroy(struct msm_dsi_pll *pll)
{
 struct dsi_pll_14nm *pll_14nm = to_pll_14nm(pll);
 struct platform_device *pdev = pll_14nm->pdev;
 int num_hws = pll_14nm->num_hws;

 of_clk_del_provider(pdev->dev.of_node);

 while (num_hws--)
  clk_hw_unregister(pll_14nm->hws[num_hws]);
}
