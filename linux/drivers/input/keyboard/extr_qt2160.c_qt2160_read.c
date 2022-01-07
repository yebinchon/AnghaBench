
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int qt2160_read(struct i2c_client *client, u8 reg)
{
 int ret;

 ret = i2c_smbus_write_byte(client, reg);
 if (ret) {
  dev_err(&client->dev,
   "couldn't send request. Returned %d\n", ret);
  return ret;
 }

 ret = i2c_smbus_read_byte(client);
 if (ret < 0) {
  dev_err(&client->dev,
   "couldn't read register. Returned %d\n", ret);
  return ret;
 }

 return ret;
}
