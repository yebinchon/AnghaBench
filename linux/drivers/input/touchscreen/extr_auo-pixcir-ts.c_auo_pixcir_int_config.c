
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct auo_pixcir_ts_platdata {scalar_t__ int_setting; } ;
struct auo_pixcir_ts {int touch_ind_mode; struct auo_pixcir_ts_platdata* pdata; struct i2c_client* client; } ;


 int AUO_PIXCIR_INT_MODE_MASK ;
 int AUO_PIXCIR_INT_POL_HIGH ;
 scalar_t__ AUO_PIXCIR_INT_TOUCH_IND ;
 int AUO_PIXCIR_REG_INT_SETTING ;
 int dev_err (int *,char*,int ,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int auo_pixcir_int_config(struct auo_pixcir_ts *ts,
        int int_setting)
{
 struct i2c_client *client = ts->client;
 const struct auo_pixcir_ts_platdata *pdata = ts->pdata;
 int ret;

 ret = i2c_smbus_read_byte_data(client, AUO_PIXCIR_REG_INT_SETTING);
 if (ret < 0) {
  dev_err(&client->dev, "unable to read reg %Xh, %d\n",
   AUO_PIXCIR_REG_INT_SETTING, ret);
  return ret;
 }

 ret &= ~AUO_PIXCIR_INT_MODE_MASK;
 ret |= int_setting;
 ret |= AUO_PIXCIR_INT_POL_HIGH;

 ret = i2c_smbus_write_byte_data(client, AUO_PIXCIR_REG_INT_SETTING,
     ret);
 if (ret < 0) {
  dev_err(&client->dev, "unable to write reg %Xh, %d\n",
   AUO_PIXCIR_REG_INT_SETTING, ret);
  return ret;
 }

 ts->touch_ind_mode = pdata->int_setting == AUO_PIXCIR_INT_TOUCH_IND;

 return 0;
}
