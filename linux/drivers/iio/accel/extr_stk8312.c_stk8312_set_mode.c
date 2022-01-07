
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk8312_data {int mode; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int STK8312_MODE_ACTIVE ;
 int STK8312_REG_MODE ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int stk8312_otp_init (struct stk8312_data*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int stk8312_set_mode(struct stk8312_data *data, u8 mode)
{
 int ret;
 struct i2c_client *client = data->client;

 if (mode == data->mode)
  return 0;

 ret = i2c_smbus_write_byte_data(client, STK8312_REG_MODE, mode);
 if (ret < 0) {
  dev_err(&client->dev, "failed to change sensor mode\n");
  return ret;
 }

 data->mode = mode;
 if (mode & STK8312_MODE_ACTIVE) {

  usleep_range(1000, 5000);
  ret = stk8312_otp_init(data);
 }

 return ret;
}
