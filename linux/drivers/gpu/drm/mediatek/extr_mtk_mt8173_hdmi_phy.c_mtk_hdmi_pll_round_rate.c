
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi_phy {unsigned long pll_rate; } ;
struct clk_hw {int dummy; } ;


 struct mtk_hdmi_phy* to_mtk_hdmi_phy (struct clk_hw*) ;

__attribute__((used)) static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long *parent_rate)
{
 struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);

 hdmi_phy->pll_rate = rate;
 if (rate <= 74250000)
  *parent_rate = rate;
 else
  *parent_rate = rate / 2;

 return rate;
}
