
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc3230_data {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int MC3230_MODE_OPCON_MASK ;
 int MC3230_REG_MODE ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int mc3230_set_opcon(struct mc3230_data *data, int opcon)
{
 int ret;
 struct i2c_client *client = data->client;

 ret = i2c_smbus_read_byte_data(client, MC3230_REG_MODE);
 if (ret < 0) {
  dev_err(&client->dev, "failed to read mode reg: %d\n", ret);
  return ret;
 }

 ret &= ~MC3230_MODE_OPCON_MASK;
 ret |= opcon;

 ret = i2c_smbus_write_byte_data(client, MC3230_REG_MODE, ret);
 if (ret < 0) {
  dev_err(&client->dev, "failed to write mode reg: %d\n", ret);
  return ret;
 }

 return 0;
}
