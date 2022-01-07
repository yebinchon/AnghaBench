
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 size_t I2C_IDX_TX_P0 ;
 unsigned int SP_AUX_EN ;
 int SP_DP_AUX_CH_CTRL2_REG ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static bool anx78xx_aux_op_finished(struct anx78xx *anx78xx)
{
 unsigned int value;
 int err;

 err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL2_REG,
     &value);
 if (err < 0)
  return 0;

 return (value & SP_AUX_EN) == 0;
}
