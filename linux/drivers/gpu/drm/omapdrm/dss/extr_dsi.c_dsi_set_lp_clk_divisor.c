
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long lp_clk; unsigned int lp_clk_div; } ;
struct TYPE_6__ {unsigned int lp_clk_div; } ;
struct dsi_data {TYPE_1__ current_lp_cinfo; TYPE_3__ user_lp_cinfo; TYPE_2__* data; } ;
struct TYPE_5__ {unsigned int max_pll_lpdiv; } ;


 int DSI_CLK_CTRL ;
 int DSSDBG (char*,unsigned int,unsigned long) ;
 int EINVAL ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 unsigned long dsi_fclk_rate (struct dsi_data*) ;

__attribute__((used)) static int dsi_set_lp_clk_divisor(struct dsi_data *dsi)
{
 unsigned long dsi_fclk;
 unsigned int lp_clk_div;
 unsigned long lp_clk;
 unsigned int lpdiv_max = dsi->data->max_pll_lpdiv;


 lp_clk_div = dsi->user_lp_cinfo.lp_clk_div;

 if (lp_clk_div == 0 || lp_clk_div > lpdiv_max)
  return -EINVAL;

 dsi_fclk = dsi_fclk_rate(dsi);

 lp_clk = dsi_fclk / 2 / lp_clk_div;

 DSSDBG("LP_CLK_DIV %u, LP_CLK %lu\n", lp_clk_div, lp_clk);
 dsi->current_lp_cinfo.lp_clk = lp_clk;
 dsi->current_lp_cinfo.lp_clk_div = lp_clk_div;


 REG_FLD_MOD(dsi, DSI_CLK_CTRL, lp_clk_div, 12, 0);


 REG_FLD_MOD(dsi, DSI_CLK_CTRL, dsi_fclk > 30000000 ? 1 : 0, 21, 21);

 return 0;
}
