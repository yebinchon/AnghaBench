
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm93_data {int sf_tach_to_pwm; int sfc2; } ;
struct i2c_client {int dummy; } ;


 int LM93_REG_SFC2 ;
 int LM93_REG_SF_TACH_TO_PWM ;
 void* lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,long) ;

__attribute__((used)) static void lm93_write_fan_smart_tach(struct i2c_client *client,
 struct lm93_data *data, int fan, long value)
{

 data->sf_tach_to_pwm = lm93_read_byte(client, LM93_REG_SF_TACH_TO_PWM);
 data->sf_tach_to_pwm &= ~(0x3 << fan * 2);
 data->sf_tach_to_pwm |= value << fan * 2;
 lm93_write_byte(client, LM93_REG_SF_TACH_TO_PWM, data->sf_tach_to_pwm);


 data->sfc2 = lm93_read_byte(client, LM93_REG_SFC2);
 if (value)
  data->sfc2 |= 1 << fan;
 else
  data->sfc2 &= ~(1 << fan);
 lm93_write_byte(client, LM93_REG_SFC2, data->sfc2);
}
