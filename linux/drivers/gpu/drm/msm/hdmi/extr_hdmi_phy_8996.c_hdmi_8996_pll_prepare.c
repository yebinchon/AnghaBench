
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_pll_8996 {int dummy; } ;
struct hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;


 int HDMI_NUM_TX_CHANNEL ;
 int REG_HDMI_8996_PHY_CFG ;
 int REG_HDMI_PHY_QSERDES_COM_SSC_EN_CENTER ;
 int REG_HDMI_PHY_QSERDES_COM_SSC_PER1 ;
 int REG_HDMI_PHY_QSERDES_COM_SSC_PER2 ;
 int REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE1 ;
 int REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE2 ;
 int REG_HDMI_PHY_QSERDES_TX_LX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN ;
 int hdmi_8996_phy_ready_status (struct hdmi_phy*) ;
 int hdmi_8996_pll_lock_status (struct hdmi_pll_8996*) ;
 int hdmi_phy_write (struct hdmi_phy*,int ,int) ;
 int hdmi_pll_write (struct hdmi_pll_8996*,int ,int) ;
 int hdmi_tx_chan_write (struct hdmi_pll_8996*,int,int ,int) ;
 struct hdmi_pll_8996* hw_clk_to_pll (struct clk_hw*) ;
 struct hdmi_phy* pll_get_phy (struct hdmi_pll_8996*) ;
 int udelay (int) ;

__attribute__((used)) static int hdmi_8996_pll_prepare(struct clk_hw *hw)
{
 struct hdmi_pll_8996 *pll = hw_clk_to_pll(hw);
 struct hdmi_phy *phy = pll_get_phy(pll);
 int i, ret = 0;

 hdmi_phy_write(phy, REG_HDMI_8996_PHY_CFG, 0x1);
 udelay(100);

 hdmi_phy_write(phy, REG_HDMI_8996_PHY_CFG, 0x19);
 udelay(100);

 ret = hdmi_8996_pll_lock_status(pll);
 if (!ret)
  return ret;

 for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++)
  hdmi_tx_chan_write(pll, i,
   REG_HDMI_PHY_QSERDES_TX_LX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN,
   0x6F);


 hdmi_pll_write(pll, REG_HDMI_PHY_QSERDES_COM_SSC_PER1, 0x0);
 hdmi_pll_write(pll, REG_HDMI_PHY_QSERDES_COM_SSC_PER2, 0x0);
 hdmi_pll_write(pll, REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE1, 0x0);
 hdmi_pll_write(pll, REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE2, 0x0);
 hdmi_pll_write(pll, REG_HDMI_PHY_QSERDES_COM_SSC_EN_CENTER, 0x2);

 ret = hdmi_8996_phy_ready_status(phy);
 if (!ret)
  return ret;


 hdmi_phy_write(phy, REG_HDMI_8996_PHY_CFG, 0x18);
 udelay(1);
 hdmi_phy_write(phy, REG_HDMI_8996_PHY_CFG, 0x19);

 return 0;
}
