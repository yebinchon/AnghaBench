
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct f75375_data {scalar_t__ kind; int* pwm_enable; int* pwm; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int F75375_REG_FAN_TIMER ;
 int F75387_FAN_DUTY_MODE (int) ;
 int F75387_FAN_MANU_MODE (int) ;
 int FAN_CTRL_MODE (int) ;
 scalar_t__ duty_mode_enabled (int) ;
 int f75375_read8 (struct i2c_client*,int ) ;
 int f75375_write8 (struct i2c_client*,int ,int) ;
 int f75375_write_pwm (struct i2c_client*,int) ;
 scalar_t__ f75387 ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int set_pwm_enable_direct(struct i2c_client *client, int nr, int val)
{
 struct f75375_data *data = i2c_get_clientdata(client);
 u8 fanmode;

 if (val < 0 || val > 4)
  return -EINVAL;

 fanmode = f75375_read8(client, F75375_REG_FAN_TIMER);
 if (data->kind == f75387) {

  if (duty_mode_enabled(data->pwm_enable[nr]) !=
    duty_mode_enabled(val))
   return -EOPNOTSUPP;

  fanmode &= ~(1 << F75387_FAN_DUTY_MODE(nr));
  fanmode &= ~(1 << F75387_FAN_MANU_MODE(nr));
  switch (val) {
  case 0:
   fanmode |= (1 << F75387_FAN_MANU_MODE(nr));
   fanmode |= (1 << F75387_FAN_DUTY_MODE(nr));
   data->pwm[nr] = 255;
   break;
  case 1:
   fanmode |= (1 << F75387_FAN_MANU_MODE(nr));
   fanmode |= (1 << F75387_FAN_DUTY_MODE(nr));
   break;
  case 2:
   break;
  case 3:
   fanmode |= (1 << F75387_FAN_MANU_MODE(nr));
   break;
  case 4:
   fanmode |= (1 << F75387_FAN_DUTY_MODE(nr));
   break;
  }
 } else {

  fanmode &= ~(3 << FAN_CTRL_MODE(nr));
  switch (val) {
  case 0:
   fanmode |= (3 << FAN_CTRL_MODE(nr));
   data->pwm[nr] = 255;
   break;
  case 1:
   fanmode |= (3 << FAN_CTRL_MODE(nr));
   break;
  case 2:
   fanmode |= (1 << FAN_CTRL_MODE(nr));
   break;
  case 3:
   break;
  case 4:
   return -EINVAL;
  }
 }

 f75375_write8(client, F75375_REG_FAN_TIMER, fanmode);
 data->pwm_enable[nr] = val;
 if (val == 0)
  f75375_write_pwm(client, nr);
 return 0;
}
