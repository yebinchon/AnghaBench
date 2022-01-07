
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 size_t I2C_IDX_RX_P0 ;
 size_t I2C_IDX_TX_P2 ;
 int SP_HPD_OUT ;
 int SP_PD_RT ;
 scalar_t__ SP_TMDS_CTRL_BASE ;
 int SP_VID_CTRL3_REG ;
 int anx78xx_clear_bits (int ,scalar_t__,int ) ;
 int anx78xx_set_bits (int ,int ,int ) ;

__attribute__((used)) static int anx78xx_set_hpd(struct anx78xx *anx78xx)
{
 int err;

 err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_RX_P0],
     SP_TMDS_CTRL_BASE + 7, SP_PD_RT);
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL3_REG,
          SP_HPD_OUT);
 if (err)
  return err;

 return 0;
}
