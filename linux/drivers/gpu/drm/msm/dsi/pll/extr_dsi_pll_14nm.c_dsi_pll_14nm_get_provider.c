
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_dsi_pll {int dummy; } ;
struct dsi_pll_14nm {struct clk_hw_onecell_data* hw_data; } ;
struct clk_hw_onecell_data {TYPE_1__** hws; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* clk; } ;


 size_t DSI_BYTE_PLL_CLK ;
 size_t DSI_PIXEL_PLL_CLK ;
 struct dsi_pll_14nm* to_pll_14nm (struct msm_dsi_pll*) ;

__attribute__((used)) static int dsi_pll_14nm_get_provider(struct msm_dsi_pll *pll,
         struct clk **byte_clk_provider,
         struct clk **pixel_clk_provider)
{
 struct dsi_pll_14nm *pll_14nm = to_pll_14nm(pll);
 struct clk_hw_onecell_data *hw_data = pll_14nm->hw_data;

 if (byte_clk_provider)
  *byte_clk_provider = hw_data->hws[DSI_BYTE_PLL_CLK]->clk;
 if (pixel_clk_provider)
  *pixel_clk_provider = hw_data->hws[DSI_PIXEL_PLL_CLK]->clk;

 return 0;
}
