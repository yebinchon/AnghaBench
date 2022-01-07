
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lidar_data {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int lidar_smbus_xfer(struct lidar_data *data, u8 reg, u8 *val, int len)
{
 struct i2c_client *client = data->client;
 int ret;






 while (len--) {
  ret = i2c_smbus_write_byte(client, reg++);
  if (ret < 0) {
   dev_err(&client->dev, "cannot write addr value");
   return ret;
  }

  ret = i2c_smbus_read_byte(client);
  if (ret < 0) {
   dev_err(&client->dev, "cannot read data value");
   return ret;
  }

  *(val++) = ret;
 }

 return 0;
}
