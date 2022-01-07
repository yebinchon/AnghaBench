
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {unsigned long last_updated; int valid; int config; int* fan; int pwm1_freq; int* pwm1; int* temp8; int* temp11; scalar_t__ kind; int temp11u; int temp2_crit_hyst; int alarms; int update_lock; int update_interval; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int LM63_REG_ALERT_STATUS ;
 int LM63_REG_LOCAL_HIGH ;
 int LM63_REG_LOCAL_TEMP ;
 int LM63_REG_PWM_FREQ ;
 int LM63_REG_PWM_VALUE ;
 int LM63_REG_REMOTE_HIGH_LSB ;
 int LM63_REG_REMOTE_HIGH_MSB ;
 int LM63_REG_REMOTE_LOW_LSB ;
 int LM63_REG_REMOTE_LOW_MSB ;
 int LM63_REG_REMOTE_OFFSET_LSB ;
 int LM63_REG_REMOTE_OFFSET_MSB ;
 int LM63_REG_REMOTE_TCRIT ;
 int LM63_REG_REMOTE_TCRIT_HYST ;
 int LM63_REG_REMOTE_TEMP_LSB ;
 int LM63_REG_REMOTE_TEMP_MSB ;
 int LM63_REG_TACH_COUNT_LSB ;
 int LM63_REG_TACH_COUNT_MSB ;
 int LM63_REG_TACH_LIMIT_LSB ;
 int LM63_REG_TACH_LIMIT_MSB ;
 int LM96163_REG_REMOTE_TEMP_U_LSB ;
 int LM96163_REG_REMOTE_TEMP_U_MSB ;
 struct lm63_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 unsigned long jiffies ;
 int lm63_update_lut (struct lm63_data*) ;
 scalar_t__ lm96163 ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static struct lm63_data *lm63_update_device(struct device *dev)
{
 struct lm63_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long next_update;

 mutex_lock(&data->update_lock);

 next_update = data->last_updated +
        msecs_to_jiffies(data->update_interval);
 if (time_after(jiffies, next_update) || !data->valid) {
  if (data->config & 0x04) {

   data->fan[0] = i2c_smbus_read_byte_data(client,
           LM63_REG_TACH_COUNT_LSB) & 0xFC;
   data->fan[0] |= i2c_smbus_read_byte_data(client,
     LM63_REG_TACH_COUNT_MSB) << 8;
   data->fan[1] = (i2c_smbus_read_byte_data(client,
     LM63_REG_TACH_LIMIT_LSB) & 0xFC)
         | (i2c_smbus_read_byte_data(client,
     LM63_REG_TACH_LIMIT_MSB) << 8);
  }

  data->pwm1_freq = i2c_smbus_read_byte_data(client,
      LM63_REG_PWM_FREQ);
  if (data->pwm1_freq == 0)
   data->pwm1_freq = 1;
  data->pwm1[0] = i2c_smbus_read_byte_data(client,
    LM63_REG_PWM_VALUE);

  data->temp8[0] = i2c_smbus_read_byte_data(client,
     LM63_REG_LOCAL_TEMP);
  data->temp8[1] = i2c_smbus_read_byte_data(client,
     LM63_REG_LOCAL_HIGH);


  data->temp11[0] = i2c_smbus_read_byte_data(client,
      LM63_REG_REMOTE_TEMP_MSB) << 8;
  data->temp11[0] |= i2c_smbus_read_byte_data(client,
       LM63_REG_REMOTE_TEMP_LSB);
  data->temp11[1] = (i2c_smbus_read_byte_data(client,
      LM63_REG_REMOTE_LOW_MSB) << 8)
    | i2c_smbus_read_byte_data(client,
      LM63_REG_REMOTE_LOW_LSB);
  data->temp11[2] = (i2c_smbus_read_byte_data(client,
      LM63_REG_REMOTE_HIGH_MSB) << 8)
    | i2c_smbus_read_byte_data(client,
      LM63_REG_REMOTE_HIGH_LSB);
  data->temp11[3] = (i2c_smbus_read_byte_data(client,
      LM63_REG_REMOTE_OFFSET_MSB) << 8)
    | i2c_smbus_read_byte_data(client,
      LM63_REG_REMOTE_OFFSET_LSB);

  if (data->kind == lm96163)
   data->temp11u = (i2c_smbus_read_byte_data(client,
     LM96163_REG_REMOTE_TEMP_U_MSB) << 8)
          | i2c_smbus_read_byte_data(client,
     LM96163_REG_REMOTE_TEMP_U_LSB);

  data->temp8[2] = i2c_smbus_read_byte_data(client,
     LM63_REG_REMOTE_TCRIT);
  data->temp2_crit_hyst = i2c_smbus_read_byte_data(client,
     LM63_REG_REMOTE_TCRIT_HYST);

  data->alarms = i2c_smbus_read_byte_data(client,
          LM63_REG_ALERT_STATUS) & 0x7F;

  data->last_updated = jiffies;
  data->valid = 1;
 }

 lm63_update_lut(data);

 mutex_unlock(&data->update_lock);

 return data;
}
