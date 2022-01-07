
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int qt2160_write(struct i2c_client *client, u8 reg, u8 data)
{
 int ret;

 ret = i2c_smbus_write_byte_data(client, reg, data);
 if (ret < 0)
  dev_err(&client->dev,
   "couldn't write data. Returned %d\n", ret);

 return ret;
}
