
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_pll_8996 {int dummy; } ;
struct hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;


 int REG_HDMI_8996_PHY_CFG ;
 int hdmi_phy_write (struct hdmi_phy*,int ,int) ;
 struct hdmi_pll_8996* hw_clk_to_pll (struct clk_hw*) ;
 struct hdmi_phy* pll_get_phy (struct hdmi_pll_8996*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hdmi_8996_pll_unprepare(struct clk_hw *hw)
{
 struct hdmi_pll_8996 *pll = hw_clk_to_pll(hw);
 struct hdmi_phy *phy = pll_get_phy(pll);

 hdmi_phy_write(phy, REG_HDMI_8996_PHY_CFG, 0x6);
 usleep_range(100, 150);
}
