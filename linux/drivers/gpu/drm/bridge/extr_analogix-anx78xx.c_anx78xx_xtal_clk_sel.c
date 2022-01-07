
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 size_t I2C_IDX_RX_P0 ;
 size_t I2C_IDX_TX_P0 ;
 size_t I2C_IDX_TX_P2 ;
 int SP_ANALOG_DEBUG2_REG ;
 int SP_AUX_MISC_CTRL_REG ;
 int SP_DP_AUX_CH_CTRL3_REG ;
 int SP_DP_AUX_CH_CTRL4_REG ;
 int SP_FORCE_SW_OFF_BYPASS ;
 int SP_HDMI_US_TIMER_CTRL_REG ;
 int SP_I2C_GEN_10US_TIMER0_REG ;
 int SP_I2C_GEN_10US_TIMER1_REG ;
 unsigned int SP_MS_TIMER_MARGIN_10_8_MASK ;
 int SP_WAIT_COUNTER_7_0_MASK ;
 int SP_XTAL_FRQ ;
 int SP_XTAL_FRQ_27M ;
 int XTAL_CLK ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int anx78xx_xtal_clk_sel(struct anx78xx *anx78xx)
{
 unsigned int value;
 int err;

 err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P2],
     SP_ANALOG_DEBUG2_REG,
     SP_XTAL_FRQ | SP_FORCE_SW_OFF_BYPASS,
     SP_XTAL_FRQ_27M);
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL3_REG,
      XTAL_CLK & SP_WAIT_COUNTER_7_0_MASK);
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL4_REG,
      ((XTAL_CLK & 0xff00) >> 2) | (XTAL_CLK / 10));
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
      SP_I2C_GEN_10US_TIMER0_REG, XTAL_CLK & 0xff);
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
      SP_I2C_GEN_10US_TIMER1_REG,
      (XTAL_CLK & 0xff00) >> 8);
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_MISC_CTRL_REG,
      XTAL_CLK / 10 - 1);
 if (err)
  return err;

 err = regmap_read(anx78xx->map[I2C_IDX_RX_P0],
     SP_HDMI_US_TIMER_CTRL_REG,
     &value);
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_RX_P0],
      SP_HDMI_US_TIMER_CTRL_REG,
      (value & SP_MS_TIMER_MARGIN_10_8_MASK) |
      ((((XTAL_CLK / 10) >> 1) - 2) << 3));
 if (err)
  return err;

 return 0;
}
