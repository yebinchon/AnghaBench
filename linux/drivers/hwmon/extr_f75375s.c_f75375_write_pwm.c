
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct f75375_data {scalar_t__ kind; int * pwm; } ;


 int F75375_REG_FAN_EXP (int) ;
 int F75375_REG_FAN_PWM_DUTY (int) ;
 int f75375_write16 (struct i2c_client*,int ,int ) ;
 int f75375_write8 (struct i2c_client*,int ,int ) ;
 scalar_t__ f75387 ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static void f75375_write_pwm(struct i2c_client *client, int nr)
{
 struct f75375_data *data = i2c_get_clientdata(client);
 if (data->kind == f75387)
  f75375_write16(client, F75375_REG_FAN_EXP(nr), data->pwm[nr]);
 else
  f75375_write8(client, F75375_REG_FAN_PWM_DUTY(nr),
         data->pwm[nr]);
}
