
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 int ARRAY_SIZE (int ) ;
 size_t I2C_IDX_TX_P0 ;
 size_t I2C_IDX_TX_P2 ;
 int SP_ANALOG_DEBUG2_REG ;
 int SP_AUTO_EN ;
 int SP_AUTO_POLLING_DISABLE ;
 int SP_AUTO_START ;
 int SP_AUX_DEFER_CTRL_REG ;
 int SP_CH0_PD ;
 int SP_DEFER_CTRL_EN ;
 int SP_DISABLE_SYNC_HDCP ;
 int SP_DP_ANALOG_POWER_DOWN_REG ;
 int SP_DP_AUX_CH_CTRL2_REG ;
 int SP_DP_HDCP_CTRL_REG ;
 int SP_DP_LINK_DEBUG_CTRL_REG ;
 int SP_DP_MISC_CTRL_REG ;
 int SP_DP_M_CALCULATION_CTRL_REG ;
 int SP_DP_POLLING_CTRL_REG ;
 int SP_EQ_TRAINING_LOOP ;
 int SP_HDCP_AUTO_TIMER_REG ;
 int SP_HDCP_KEY_COMMAND_REG ;
 int SP_HDCP_LINK_CHECK_TIMER_REG ;
 int SP_LINK_POLLING ;
 int SP_M_GEN_CLK_SEL ;
 int SP_M_VID_DEBUG ;
 int SP_POWERON_TIME_1P5MS ;
 int SP_VID_CTRL8_REG ;
 int SP_VID_VRES_TH ;
 int anx78xx_clear_bits (int ,int ,int) ;
 int anx78xx_link_phy_initialization (struct anx78xx*) ;
 int anx78xx_set_bits (int ,int ,int) ;
 int anx78xx_xtal_clk_sel (struct anx78xx*) ;
 int otp_key_protect ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int anx78xx_tx_initialization(struct anx78xx *anx78xx)
{
 int err;


 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL2_REG,
      0x30);
 if (err)
  return err;


 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_DP_AUX_CH_CTRL2_REG, 0x08);
 if (err)
  return err;

 err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
     SP_DP_HDCP_CTRL_REG, SP_AUTO_EN |
     SP_AUTO_START);
 if (err)
  return err;

 err = regmap_multi_reg_write(anx78xx->map[I2C_IDX_TX_P0],
         otp_key_protect,
         ARRAY_SIZE(otp_key_protect));
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_HDCP_KEY_COMMAND_REG, SP_DISABLE_SYNC_HDCP);
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL8_REG,
      SP_VID_VRES_TH);
 if (err)
  return err;





 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_HDCP_AUTO_TIMER_REG,
      0x00);
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_DP_HDCP_CTRL_REG, SP_LINK_POLLING);
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_DP_LINK_DEBUG_CTRL_REG, SP_M_VID_DEBUG);
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2],
          SP_ANALOG_DEBUG2_REG, SP_POWERON_TIME_1P5MS);
 if (err)
  return err;

 err = anx78xx_xtal_clk_sel(anx78xx);
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_DEFER_CTRL_REG,
      SP_DEFER_CTRL_EN | 0x0c);
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_DP_POLLING_CTRL_REG,
          SP_AUTO_POLLING_DISABLE);
 if (err)
  return err;





 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
      SP_HDCP_LINK_CHECK_TIMER_REG, 0x1d);
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_DP_MISC_CTRL_REG, SP_EQ_TRAINING_LOOP);
 if (err)
  return err;


 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_DP_ANALOG_POWER_DOWN_REG, SP_CH0_PD);
 if (err)
  return err;

 err = anx78xx_link_phy_initialization(anx78xx);
 if (err)
  return err;


 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_DP_M_CALCULATION_CTRL_REG, SP_M_GEN_CLK_SEL);
 if (err)
  return err;

 return 0;
}
