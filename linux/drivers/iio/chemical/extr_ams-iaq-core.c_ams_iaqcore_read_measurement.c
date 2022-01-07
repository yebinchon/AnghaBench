
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; char* buf; int addr; } ;
struct i2c_client {int flags; int adapter; int addr; } ;
struct ams_iaqcore_data {int buffer; struct i2c_client* client; } ;


 int AMS_IAQCORE_DATA_SIZE ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int ams_iaqcore_read_measurement(struct ams_iaqcore_data *data)
{
 struct i2c_client *client = data->client;
 int ret;

 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = client->flags | I2C_M_RD,
  .len = AMS_IAQCORE_DATA_SIZE,
  .buf = (char *) &data->buffer,
 };

 ret = i2c_transfer(client->adapter, &msg, 1);

 return (ret == AMS_IAQCORE_DATA_SIZE) ? 0 : ret;
}
