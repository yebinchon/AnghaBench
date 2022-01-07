
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_pll_14nm_postdiv {int flags; int width; struct dsi_pll_14nm* pll; } ;
struct dsi_pll_14nm {int id; } ;
struct clk_hw {int dummy; } ;


 int DBG (char*,int ,unsigned long) ;
 long divider_round_rate (struct clk_hw*,unsigned long,unsigned long*,int *,int ,int ) ;
 struct dsi_pll_14nm_postdiv* to_pll_14nm_postdiv (struct clk_hw*) ;

__attribute__((used)) static long dsi_pll_14nm_postdiv_round_rate(struct clk_hw *hw,
         unsigned long rate,
         unsigned long *prate)
{
 struct dsi_pll_14nm_postdiv *postdiv = to_pll_14nm_postdiv(hw);
 struct dsi_pll_14nm *pll_14nm = postdiv->pll;

 DBG("DSI%d PLL parent rate=%lu", pll_14nm->id, rate);

 return divider_round_rate(hw, rate, prate, ((void*)0),
      postdiv->width,
      postdiv->flags);
}
