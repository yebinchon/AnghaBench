
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk3310_data {int ps_enabled; int als_enabled; int lock; int reg_state; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int STK3310_STATE_EN_ALS ;
 int STK3310_STATE_EN_PS ;
 int STK3310_STATE_STANDBY ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int stk3310_set_state(struct stk3310_data *data, u8 state)
{
 int ret;
 struct i2c_client *client = data->client;


 if (state > 7 || state == 4)
  return -EINVAL;

 mutex_lock(&data->lock);
 ret = regmap_field_write(data->reg_state, state);
 if (ret < 0) {
  dev_err(&client->dev, "failed to change sensor state\n");
 } else if (state != STK3310_STATE_STANDBY) {

  data->ps_enabled = !!(state & STK3310_STATE_EN_PS);
  data->als_enabled = !!(state & STK3310_STATE_EN_ALS);
 }
 mutex_unlock(&data->lock);

 return ret;
}
