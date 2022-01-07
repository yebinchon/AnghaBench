
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct auo_pixcir_ts {struct i2c_client* client; } ;


 int AUO_PIXCIR_POWER_MASK ;
 int AUO_PIXCIR_REG_POWER_MODE ;
 int dev_err (int *,char*,int ,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int auo_pixcir_power_mode(struct auo_pixcir_ts *ts, int mode)
{
 struct i2c_client *client = ts->client;
 int ret;

 ret = i2c_smbus_read_byte_data(client, AUO_PIXCIR_REG_POWER_MODE);
 if (ret < 0) {
  dev_err(&client->dev, "unable to read reg %Xh, %d\n",
   AUO_PIXCIR_REG_POWER_MODE, ret);
  return ret;
 }

 ret &= ~AUO_PIXCIR_POWER_MASK;
 ret |= mode;

 ret = i2c_smbus_write_byte_data(client, AUO_PIXCIR_REG_POWER_MODE, ret);
 if (ret) {
  dev_err(&client->dev, "unable to write reg %Xh, %d\n",
   AUO_PIXCIR_REG_POWER_MODE, ret);
  return ret;
 }

 return 0;
}
