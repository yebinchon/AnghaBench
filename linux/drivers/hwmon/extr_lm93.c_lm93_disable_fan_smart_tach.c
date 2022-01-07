
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm93_data {int sfc2; } ;
struct i2c_client {int dummy; } ;


 int LM93_REG_SFC2 ;
 int LM93_REG_SF_TACH_TO_PWM ;
 void* lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm93_disable_fan_smart_tach(struct i2c_client *client,
 struct lm93_data *data, int pwm)
{
 int mapping = lm93_read_byte(client, LM93_REG_SF_TACH_TO_PWM);
 int mask;


 mapping = (mapping >> pwm) & 0x55;
 mask = mapping & 0x01;
 mask |= (mapping & 0x04) >> 1;
 mask |= (mapping & 0x10) >> 2;
 mask |= (mapping & 0x40) >> 3;


 data->sfc2 = lm93_read_byte(client, LM93_REG_SFC2);
 data->sfc2 &= ~mask;
 lm93_write_byte(client, LM93_REG_SFC2, data->sfc2);
}
