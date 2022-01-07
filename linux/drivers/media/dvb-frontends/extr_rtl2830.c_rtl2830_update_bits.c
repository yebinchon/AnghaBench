
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2830_dev {int regmap; } ;
struct i2c_client {int adapter; } ;


 int I2C_LOCK_SEGMENT ;
 struct rtl2830_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_lock_bus (int ,int ) ;
 int i2c_unlock_bus (int ,int ) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int rtl2830_update_bits(struct i2c_client *client, unsigned int reg,
          unsigned int mask, unsigned int val)
{
 struct rtl2830_dev *dev = i2c_get_clientdata(client);
 int ret;

 i2c_lock_bus(client->adapter, I2C_LOCK_SEGMENT);
 ret = regmap_update_bits(dev->regmap, reg, mask, val);
 i2c_unlock_bus(client->adapter, I2C_LOCK_SEGMENT);
 return ret;
}
