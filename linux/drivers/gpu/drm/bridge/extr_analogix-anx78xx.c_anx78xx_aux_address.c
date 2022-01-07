
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 size_t I2C_IDX_TX_P0 ;
 int SP_AUX_ADDR_15_8_REG ;
 int SP_AUX_ADDR_19_16_MASK ;
 int SP_AUX_ADDR_19_16_REG ;
 int SP_AUX_ADDR_7_0_REG ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int anx78xx_aux_address(struct anx78xx *anx78xx, unsigned int addr)
{
 int err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_7_0_REG,
      addr & 0xff);
 if (err)
  return err;

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_15_8_REG,
      (addr & 0xff00) >> 8);
 if (err)
  return err;






 err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
     SP_AUX_ADDR_19_16_REG,
     SP_AUX_ADDR_19_16_MASK,
     (addr & 0xf0000) >> 16);

 if (err)
  return err;

 return 0;
}
