
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk8312_data {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int stk8312_read_accel(struct stk8312_data *data, u8 address)
{
 int ret;
 struct i2c_client *client = data->client;

 if (address > 2)
  return -EINVAL;

 ret = i2c_smbus_read_byte_data(client, address);
 if (ret < 0)
  dev_err(&client->dev, "register read failed\n");

 return ret;
}
