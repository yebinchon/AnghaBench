
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 int ARRAY_SIZE (int ) ;
 size_t I2C_IDX_TX_P1 ;
 size_t I2C_IDX_TX_P2 ;
 int SP_ANALOG_CTRL0_REG ;
 int SP_DP_TX_LT_CTRL0_REG ;
 int dp_tx_output_precise_tune_bits ;
 int regmap_bulk_write (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int anx78xx_link_phy_initialization(struct anx78xx *anx78xx)
{
 int err;





 err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_ANALOG_CTRL0_REG,
      0x02);
 if (err)
  return err;




 err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P1],
    SP_DP_TX_LT_CTRL0_REG,
    dp_tx_output_precise_tune_bits,
    ARRAY_SIZE(dp_tx_output_precise_tune_bits));

 if (err)
  return err;

 return 0;
}
