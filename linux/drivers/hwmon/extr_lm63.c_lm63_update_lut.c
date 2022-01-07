
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int lut_valid; int lut_size; scalar_t__ lut_last_updated; void* lut_temp_hyst; void** temp8; void** pwm1; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int HZ ;
 int LM63_REG_LUT_PWM (int) ;
 int LM63_REG_LUT_TEMP (int) ;
 int LM63_REG_LUT_TEMP_HYST ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void lm63_update_lut(struct lm63_data *data)
{
 struct i2c_client *client = data->client;
 int i;

 if (time_after(jiffies, data->lut_last_updated + 5 * HZ) ||
     !data->lut_valid) {
  for (i = 0; i < data->lut_size; i++) {
   data->pwm1[1 + i] = i2c_smbus_read_byte_data(client,
         LM63_REG_LUT_PWM(i));
   data->temp8[3 + i] = i2c_smbus_read_byte_data(client,
          LM63_REG_LUT_TEMP(i));
  }
  data->lut_temp_hyst = i2c_smbus_read_byte_data(client,
          LM63_REG_LUT_TEMP_HYST);

  data->lut_last_updated = jiffies;
  data->lut_valid = 1;
 }
}
