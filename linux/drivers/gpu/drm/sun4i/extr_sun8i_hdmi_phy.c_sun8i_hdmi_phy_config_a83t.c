
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy {int regs; } ;
struct dw_hdmi {int dummy; } ;


 int I2C_ADDR ;
 int SUN8I_HDMI_PHY_REXT_CTRL_REG ;
 int SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN ;
 int dw_hdmi_phy_gen2_pddq (struct dw_hdmi*,int) ;
 int dw_hdmi_phy_gen2_txpwron (struct dw_hdmi*,int) ;
 int dw_hdmi_phy_i2c_set_addr (struct dw_hdmi*,int ) ;
 int dw_hdmi_phy_i2c_write (struct dw_hdmi*,int,int) ;
 int dw_hdmi_phy_reset (struct dw_hdmi*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sun8i_hdmi_phy_config_a83t(struct dw_hdmi *hdmi,
          struct sun8i_hdmi_phy *phy,
          unsigned int clk_rate)
{
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_REXT_CTRL_REG,
      SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN,
      SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN);


 dw_hdmi_phy_gen2_txpwron(hdmi, 0);
 dw_hdmi_phy_gen2_pddq(hdmi, 1);

 dw_hdmi_phy_reset(hdmi);

 dw_hdmi_phy_gen2_pddq(hdmi, 0);

 dw_hdmi_phy_i2c_set_addr(hdmi, I2C_ADDR);






 if (clk_rate <= 27000000) {
  dw_hdmi_phy_i2c_write(hdmi, 0x01e0, 0x06);
  dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x15);
  dw_hdmi_phy_i2c_write(hdmi, 0x08da, 0x10);
  dw_hdmi_phy_i2c_write(hdmi, 0x0007, 0x19);
  dw_hdmi_phy_i2c_write(hdmi, 0x0318, 0x0e);
  dw_hdmi_phy_i2c_write(hdmi, 0x8009, 0x09);
 } else if (clk_rate <= 74250000) {
  dw_hdmi_phy_i2c_write(hdmi, 0x0540, 0x06);
  dw_hdmi_phy_i2c_write(hdmi, 0x0005, 0x15);
  dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x10);
  dw_hdmi_phy_i2c_write(hdmi, 0x0007, 0x19);
  dw_hdmi_phy_i2c_write(hdmi, 0x02b5, 0x0e);
  dw_hdmi_phy_i2c_write(hdmi, 0x8009, 0x09);
 } else if (clk_rate <= 148500000) {
  dw_hdmi_phy_i2c_write(hdmi, 0x04a0, 0x06);
  dw_hdmi_phy_i2c_write(hdmi, 0x000a, 0x15);
  dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x10);
  dw_hdmi_phy_i2c_write(hdmi, 0x0002, 0x19);
  dw_hdmi_phy_i2c_write(hdmi, 0x0021, 0x0e);
  dw_hdmi_phy_i2c_write(hdmi, 0x8029, 0x09);
 } else {
  dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x06);
  dw_hdmi_phy_i2c_write(hdmi, 0x000f, 0x15);
  dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x10);
  dw_hdmi_phy_i2c_write(hdmi, 0x0002, 0x19);
  dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x0e);
  dw_hdmi_phy_i2c_write(hdmi, 0x802b, 0x09);
 }

 dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x1e);
 dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x13);
 dw_hdmi_phy_i2c_write(hdmi, 0x0000, 0x17);

 dw_hdmi_phy_gen2_txpwron(hdmi, 1);

 return 0;
}
