
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk8312_data {int range; int mode; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int STK8312_MODE_STANDBY ;
 int STK8312_REG_STH ;
 int STK8312_RNG_MASK ;
 int STK8312_RNG_SHIFT ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int stk8312_set_mode (struct stk8312_data*,int) ;

__attribute__((used)) static int stk8312_set_range(struct stk8312_data *data, u8 range)
{
 int ret;
 u8 masked_reg;
 u8 mode;
 struct i2c_client *client = data->client;

 if (range != 1 && range != 2)
  return -EINVAL;
 else if (range == data->range)
  return 0;

 mode = data->mode;

 ret = stk8312_set_mode(data, STK8312_MODE_STANDBY);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(client, STK8312_REG_STH);
 if (ret < 0)
  goto err_activate;

 masked_reg = ret & (~STK8312_RNG_MASK);
 masked_reg |= range << STK8312_RNG_SHIFT;

 ret = i2c_smbus_write_byte_data(client, STK8312_REG_STH, masked_reg);
 if (ret < 0)
  goto err_activate;

 data->range = range;

 return stk8312_set_mode(data, mode);

err_activate:
 dev_err(&client->dev, "failed to change sensor range\n");
 stk8312_set_mode(data, mode);

 return ret;
}
