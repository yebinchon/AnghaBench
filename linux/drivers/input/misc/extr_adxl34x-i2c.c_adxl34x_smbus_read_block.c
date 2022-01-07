
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int i2c_smbus_read_i2c_block_data (struct i2c_client*,unsigned char,int,void*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int adxl34x_smbus_read_block(struct device *dev,
        unsigned char reg, int count,
        void *buf)
{
 struct i2c_client *client = to_i2c_client(dev);

 return i2c_smbus_read_i2c_block_data(client, reg, count, buf);
}
