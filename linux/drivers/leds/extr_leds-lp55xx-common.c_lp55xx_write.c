
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_chip {int cl; } ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;

int lp55xx_write(struct lp55xx_chip *chip, u8 reg, u8 val)
{
 return i2c_smbus_write_byte_data(chip->cl, reg, val);
}
