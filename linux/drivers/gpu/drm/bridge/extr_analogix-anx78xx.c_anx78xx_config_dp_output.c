
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 size_t I2C_IDX_TX_P2 ;
 int SP_VIDEO_EN ;
 int SP_VIDEO_MUTE ;
 int SP_VID_CTRL1_REG ;
 int anx78xx_clear_bits (int ,int ,int ) ;
 int anx78xx_set_bits (int ,int ,int ) ;

__attribute__((used)) static int anx78xx_config_dp_output(struct anx78xx *anx78xx)
{
 int err;

 err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL1_REG,
     SP_VIDEO_MUTE);
 if (err)
  return err;


 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL1_REG,
          SP_VIDEO_EN);
 if (err)
  return err;

 return 0;
}
