
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83l786ng_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* fan_div; int* pwm_mode; int* pwm_enable; int* pwm; int** temp; int* tolerance; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 int HZ ;
 int* W83L786NG_PWM_ENABLE_SHIFT ;
 int* W83L786NG_PWM_MODE_SHIFT ;
 int W83L786NG_REG_FAN (int) ;
 int W83L786NG_REG_FAN_CFG ;
 int W83L786NG_REG_FAN_DIV ;
 int W83L786NG_REG_FAN_MIN (int) ;
 int W83L786NG_REG_IN (int) ;
 int W83L786NG_REG_IN_MAX (int) ;
 int W83L786NG_REG_IN_MIN (int) ;
 int * W83L786NG_REG_PWM ;
 int ** W83L786NG_REG_TEMP ;
 int W83L786NG_REG_TOLERANCE ;
 int dev_dbg (int *,char*) ;
 struct w83l786ng_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int w83l786ng_read_value (struct i2c_client*,int ) ;

__attribute__((used)) static struct w83l786ng_data *w83l786ng_update_device(struct device *dev)
{
 struct w83l786ng_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int i, j;
 u8 reg_tmp, pwmcfg;

 mutex_lock(&data->update_lock);
 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {
  dev_dbg(&client->dev, "Updating w83l786ng data.\n");


  for (i = 0; i < 3; i++) {
   data->in[i] = w83l786ng_read_value(client,
       W83L786NG_REG_IN(i));
   data->in_min[i] = w83l786ng_read_value(client,
       W83L786NG_REG_IN_MIN(i));
   data->in_max[i] = w83l786ng_read_value(client,
       W83L786NG_REG_IN_MAX(i));
  }


  for (i = 0; i < 2; i++) {
   data->fan[i] = w83l786ng_read_value(client,
       W83L786NG_REG_FAN(i));
   data->fan_min[i] = w83l786ng_read_value(client,
       W83L786NG_REG_FAN_MIN(i));
  }


  reg_tmp = w83l786ng_read_value(client, W83L786NG_REG_FAN_DIV);
  data->fan_div[0] = reg_tmp & 0x07;
  data->fan_div[1] = (reg_tmp >> 4) & 0x07;

  pwmcfg = w83l786ng_read_value(client, W83L786NG_REG_FAN_CFG);
  for (i = 0; i < 2; i++) {
   data->pwm_mode[i] =
       ((pwmcfg >> W83L786NG_PWM_MODE_SHIFT[i]) & 1)
       ? 0 : 1;
   data->pwm_enable[i] =
       ((pwmcfg >> W83L786NG_PWM_ENABLE_SHIFT[i]) & 3) + 1;
   data->pwm[i] =
       (w83l786ng_read_value(client, W83L786NG_REG_PWM[i])
        & 0x0f) * 0x11;
  }



  for (i = 0; i < 2; i++) {
   for (j = 0; j < 3; j++) {
    data->temp[i][j] = w83l786ng_read_value(client,
        W83L786NG_REG_TEMP[i][j]);
   }
  }


  reg_tmp = w83l786ng_read_value(client, W83L786NG_REG_TOLERANCE);
  data->tolerance[0] = reg_tmp & 0x0f;
  data->tolerance[1] = (reg_tmp >> 4) & 0x0f;

  data->last_updated = jiffies;
  data->valid = 1;

 }

 mutex_unlock(&data->update_lock);

 return data;
}
