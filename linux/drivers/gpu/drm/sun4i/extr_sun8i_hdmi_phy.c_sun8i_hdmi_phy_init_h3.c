
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy {unsigned int rcal; int regs; } ;


 int SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0 ;
 int SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1 ;
 int SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2 ;
 int SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK ;
 int SUN8I_HDMI_PHY_ANA_CFG1_CKEN ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENBI ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0 ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1 ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2 ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENVBS ;
 int SUN8I_HDMI_PHY_ANA_CFG1_LDOEN ;
 int SUN8I_HDMI_PHY_ANA_CFG1_REG ;
 int SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN ;
 int SUN8I_HDMI_PHY_ANA_CFG3_REG ;
 int SUN8I_HDMI_PHY_ANA_CFG3_SCLEN ;
 int SUN8I_HDMI_PHY_ANA_CFG3_SDAEN ;
 unsigned int SUN8I_HDMI_PHY_ANA_STS_RCALEND2D ;
 unsigned int SUN8I_HDMI_PHY_ANA_STS_RCAL_MASK ;
 int SUN8I_HDMI_PHY_ANA_STS_REG ;
 int SUN8I_HDMI_PHY_CEC_REG ;
 int SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK ;
 int SUN8I_HDMI_PHY_PLL_CFG1_REG ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,unsigned int,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;
 int sun8i_hdmi_phy_unlock (struct sun8i_hdmi_phy*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sun8i_hdmi_phy_init_h3(struct sun8i_hdmi_phy *phy)
{
 unsigned int val;

 sun8i_hdmi_phy_unlock(phy);

 regmap_write(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG, 0);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_ENBI,
      SUN8I_HDMI_PHY_ANA_CFG1_ENBI);
 udelay(5);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN,
      SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_ENVBS,
      SUN8I_HDMI_PHY_ANA_CFG1_ENVBS);
 usleep_range(10, 20);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_LDOEN,
      SUN8I_HDMI_PHY_ANA_CFG1_LDOEN);
 udelay(5);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_CKEN,
      SUN8I_HDMI_PHY_ANA_CFG1_CKEN);
 usleep_range(40, 100);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL,
      SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL);
 usleep_range(100, 200);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG,
      SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0 |
      SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1 |
      SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2,
      SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0 |
      SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1 |
      SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2);


 regmap_read_poll_timeout(phy->regs, SUN8I_HDMI_PHY_ANA_STS_REG, val,
     (val & SUN8I_HDMI_PHY_ANA_STS_RCALEND2D),
     100, 2000);

 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK,
      SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK);
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
      SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0 |
      SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1 |
      SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2 |
      SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK,
      SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0 |
      SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1 |
      SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2 |
      SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK);


 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_ANA_CFG3_REG,
      SUN8I_HDMI_PHY_ANA_CFG3_SCLEN |
      SUN8I_HDMI_PHY_ANA_CFG3_SDAEN,
      SUN8I_HDMI_PHY_ANA_CFG3_SCLEN |
      SUN8I_HDMI_PHY_ANA_CFG3_SDAEN);


 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_PLL_CFG1_REG,
      SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK, 0);


 regmap_write(phy->regs, SUN8I_HDMI_PHY_CEC_REG, 0);


 regmap_read(phy->regs, SUN8I_HDMI_PHY_ANA_STS_REG, &val);
 phy->rcal = (val & SUN8I_HDMI_PHY_ANA_STS_RCAL_MASK) >> 2;
}
