
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_pll_8960 {int dummy; } ;
struct hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;


 int DBG (char*) ;
 unsigned int HDMI_8960_PHY_REG12_PWRDN_B ;
 unsigned int HDMI_8960_PHY_REG12_SW_RESET ;
 int REG_HDMI_8960_PHY_PLL_PWRDN_B ;
 int REG_HDMI_8960_PHY_REG12 ;
 unsigned int hdmi_phy_read (struct hdmi_phy*,int ) ;
 int hdmi_phy_write (struct hdmi_phy*,int ,unsigned int) ;
 struct hdmi_pll_8960* hw_clk_to_pll (struct clk_hw*) ;
 int mb () ;
 struct hdmi_phy* pll_get_phy (struct hdmi_pll_8960*) ;
 unsigned int pll_read (struct hdmi_pll_8960*,int ) ;
 int pll_write (struct hdmi_pll_8960*,int ,unsigned int) ;

__attribute__((used)) static void hdmi_pll_disable(struct clk_hw *hw)
{
 struct hdmi_pll_8960 *pll = hw_clk_to_pll(hw);
 struct hdmi_phy *phy = pll_get_phy(pll);
 unsigned int val;

 DBG("");

 val = hdmi_phy_read(phy, REG_HDMI_8960_PHY_REG12);
 val &= ~HDMI_8960_PHY_REG12_PWRDN_B;
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG12, val);

 val = pll_read(pll, REG_HDMI_8960_PHY_PLL_PWRDN_B);
 val |= HDMI_8960_PHY_REG12_SW_RESET;
 val &= ~HDMI_8960_PHY_REG12_PWRDN_B;
 pll_write(pll, REG_HDMI_8960_PHY_PLL_PWRDN_B, val);

 mb();
}
