
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lp55xx_chip {int cl; } ;
typedef scalar_t__ s32 ;


 scalar_t__ i2c_smbus_read_byte_data (int ,scalar_t__) ;

int lp55xx_read(struct lp55xx_chip *chip, u8 reg, u8 *val)
{
 s32 ret;

 ret = i2c_smbus_read_byte_data(chip->cl, reg);
 if (ret < 0)
  return ret;

 *val = ret;
 return 0;
}
