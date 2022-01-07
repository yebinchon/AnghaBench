
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_dsi_pll {int dummy; } ;
struct TYPE_3__ {int clk_hw; } ;
struct dsi_pll_10nm {TYPE_1__ base; int out_div_clk_hw; int bit_clk_hw; int byte_clk_hw; int by_2_bit_clk_hw; int post_out_div_clk_hw; int pclk_mux_hw; int out_dsiclk_hw; int id; TYPE_2__* pdev; } ;
struct device {int of_node; } ;
struct TYPE_4__ {struct device dev; } ;


 int DBG (char*,int ) ;
 int clk_hw_unregister (int *) ;
 int clk_hw_unregister_divider (int ) ;
 int clk_hw_unregister_fixed_factor (int ) ;
 int clk_hw_unregister_mux (int ) ;
 int of_clk_del_provider (int ) ;
 struct dsi_pll_10nm* to_pll_10nm (struct msm_dsi_pll*) ;

__attribute__((used)) static void dsi_pll_10nm_destroy(struct msm_dsi_pll *pll)
{
 struct dsi_pll_10nm *pll_10nm = to_pll_10nm(pll);
 struct device *dev = &pll_10nm->pdev->dev;

 DBG("DSI PLL%d", pll_10nm->id);
 of_clk_del_provider(dev->of_node);

 clk_hw_unregister_divider(pll_10nm->out_dsiclk_hw);
 clk_hw_unregister_mux(pll_10nm->pclk_mux_hw);
 clk_hw_unregister_fixed_factor(pll_10nm->post_out_div_clk_hw);
 clk_hw_unregister_fixed_factor(pll_10nm->by_2_bit_clk_hw);
 clk_hw_unregister_fixed_factor(pll_10nm->byte_clk_hw);
 clk_hw_unregister_divider(pll_10nm->bit_clk_hw);
 clk_hw_unregister_divider(pll_10nm->out_div_clk_hw);
 clk_hw_unregister(&pll_10nm->base.clk_hw);
}
