
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
struct ad7291_chip_info {struct i2c_client* client; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;

__attribute__((used)) static int ad7291_i2c_read(struct ad7291_chip_info *chip, u8 reg, u16 *data)
{
 struct i2c_client *client = chip->client;
 int ret = 0;

 ret = i2c_smbus_read_word_swapped(client, reg);
 if (ret < 0) {
  dev_err(&client->dev, "I2C read error\n");
  return ret;
 }

 *data = ret;

 return 0;
}
