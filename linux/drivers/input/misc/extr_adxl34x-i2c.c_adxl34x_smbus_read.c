
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,unsigned char) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int adxl34x_smbus_read(struct device *dev, unsigned char reg)
{
 struct i2c_client *client = to_i2c_client(dev);

 return i2c_smbus_read_byte_data(client, reg);
}
