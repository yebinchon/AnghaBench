
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct f75375_data {int valid; int* temp_high; int* temp_max_hyst; int* in_max; int* in_min; int fan_timer; int* pwm; int* temp11; scalar_t__ kind; int* in; int update_lock; void* last_updated; void** fan; void* last_limits; void** fan_target; void** fan_min; void** fan_max; } ;
struct device {int dummy; } ;


 int F75375_REG_FAN (int) ;
 int F75375_REG_FAN_EXP (int) ;
 int F75375_REG_FAN_FULL (int) ;
 int F75375_REG_FAN_MIN (int) ;
 int F75375_REG_FAN_PWM_DUTY (int) ;
 int F75375_REG_FAN_TIMER ;
 int F75375_REG_TEMP (int) ;
 int F75375_REG_TEMP_HIGH (int) ;
 int F75375_REG_TEMP_HYST (int) ;
 int F75375_REG_VOLT (int) ;
 int F75375_REG_VOLT_HIGH (int) ;
 int F75375_REG_VOLT_LOW (int) ;
 int F75387_REG_TEMP11_LSB (int) ;
 int HZ ;
 void* f75375_read16 (struct i2c_client*,int ) ;
 int f75375_read8 (struct i2c_client*,int ) ;
 scalar_t__ f75387 ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;
 void* jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (void*,void*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct f75375_data *f75375_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct f75375_data *data = i2c_get_clientdata(client);
 int nr;

 mutex_lock(&data->update_lock);


 if (time_after(jiffies, data->last_limits + 60 * HZ)
  || !data->valid) {
  for (nr = 0; nr < 2; nr++) {
   data->temp_high[nr] =
    f75375_read8(client, F75375_REG_TEMP_HIGH(nr));
   data->temp_max_hyst[nr] =
    f75375_read8(client, F75375_REG_TEMP_HYST(nr));
   data->fan_max[nr] =
    f75375_read16(client, F75375_REG_FAN_FULL(nr));
   data->fan_min[nr] =
    f75375_read16(client, F75375_REG_FAN_MIN(nr));
   data->fan_target[nr] =
    f75375_read16(client, F75375_REG_FAN_EXP(nr));
  }
  for (nr = 0; nr < 4; nr++) {
   data->in_max[nr] =
    f75375_read8(client, F75375_REG_VOLT_HIGH(nr));
   data->in_min[nr] =
    f75375_read8(client, F75375_REG_VOLT_LOW(nr));
  }
  data->fan_timer = f75375_read8(client, F75375_REG_FAN_TIMER);
  data->last_limits = jiffies;
 }


 if (time_after(jiffies, data->last_updated + 2 * HZ)
  || !data->valid) {
  for (nr = 0; nr < 2; nr++) {
   data->pwm[nr] = f75375_read8(client,
    F75375_REG_FAN_PWM_DUTY(nr));

   data->temp11[nr] =
    f75375_read8(client, F75375_REG_TEMP(nr)) << 8;
   if (data->kind == f75387)

    data->temp11[nr] |=
     f75375_read8(client,
           F75387_REG_TEMP11_LSB(nr));
   data->fan[nr] =
    f75375_read16(client, F75375_REG_FAN(nr));
  }
  for (nr = 0; nr < 4; nr++)
   data->in[nr] =
    f75375_read8(client, F75375_REG_VOLT(nr));

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);
 return data;
}
