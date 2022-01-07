
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk {int dummy; } ;


 int clk_unregister (struct clk*) ;
 int of_clk_del_provider (int ) ;

void msm_dsi_pll_helper_unregister_clks(struct platform_device *pdev,
     struct clk **clks, u32 num_clks)
{
 of_clk_del_provider(pdev->dev.of_node);

 if (!num_clks || !clks)
  return;

 do {
  clk_unregister(clks[--num_clks]);
  clks[num_clks] = ((void*)0);
 } while (num_clks);
}
