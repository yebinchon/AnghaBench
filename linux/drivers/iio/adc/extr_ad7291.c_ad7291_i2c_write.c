
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ad7291_chip_info {int client; } ;


 int i2c_smbus_write_word_swapped (int ,int ,int ) ;

__attribute__((used)) static int ad7291_i2c_write(struct ad7291_chip_info *chip, u8 reg, u16 data)
{
 return i2c_smbus_write_word_swapped(chip->client, reg, data);
}
