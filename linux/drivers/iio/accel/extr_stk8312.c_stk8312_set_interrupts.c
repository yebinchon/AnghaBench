
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk8312_data {int mode; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int STK8312_MODE_STANDBY ;
 int STK8312_REG_INTSU ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int stk8312_set_mode (struct stk8312_data*,int ) ;

__attribute__((used)) static int stk8312_set_interrupts(struct stk8312_data *data, u8 int_mask)
{
 int ret;
 u8 mode;
 struct i2c_client *client = data->client;

 mode = data->mode;

 ret = stk8312_set_mode(data, STK8312_MODE_STANDBY);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte_data(client, STK8312_REG_INTSU, int_mask);
 if (ret < 0) {
  dev_err(&client->dev, "failed to set interrupts\n");
  stk8312_set_mode(data, mode);
  return ret;
 }

 return stk8312_set_mode(data, mode);
}
