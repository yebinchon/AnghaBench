
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy {int clk_bus; int clk_mod; int clk_pll1; int clk_pll0; int rst_phy; int clk_phy; } ;
struct sun8i_dw_hdmi {struct sun8i_hdmi_phy* phy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int reset_control_assert (int ) ;
 int reset_control_put (int ) ;

void sun8i_hdmi_phy_remove(struct sun8i_dw_hdmi *hdmi)
{
 struct sun8i_hdmi_phy *phy = hdmi->phy;

 clk_disable_unprepare(phy->clk_mod);
 clk_disable_unprepare(phy->clk_bus);
 clk_disable_unprepare(phy->clk_phy);

 reset_control_assert(phy->rst_phy);

 reset_control_put(phy->rst_phy);

 clk_put(phy->clk_pll0);
 clk_put(phy->clk_pll1);
 clk_put(phy->clk_mod);
 clk_put(phy->clk_bus);
}
