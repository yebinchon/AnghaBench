
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct f75375s_platform_data {int * pwm; int * pwm_enable; } ;
struct f75375_data {scalar_t__ kind; int* pwm_mode; int* pwm_enable; int * pwm; } ;


 int F75375_FAN_CTRL_LINEAR (int) ;
 int F75375_REG_CONFIG1 ;
 int F75375_REG_FAN_TIMER ;
 int F75387_FAN_CTRL_LINEAR (int) ;
 int F75387_FAN_DUTY_MODE (int) ;
 int F75387_FAN_MANU_MODE (int) ;
 int FAN_CTRL_MODE (int) ;
 scalar_t__ auto_mode_enabled (int ) ;
 int clamp_val (int ,int ,int) ;
 int duty_mode_enabled (int ) ;
 int f75375_read8 (struct i2c_client*,int ) ;
 int f75375_write_pwm (struct i2c_client*,int) ;
 scalar_t__ f75387 ;
 int set_pwm_enable_direct (struct i2c_client*,int,int ) ;

__attribute__((used)) static void f75375_init(struct i2c_client *client, struct f75375_data *data,
  struct f75375s_platform_data *f75375s_pdata)
{
 int nr;

 if (!f75375s_pdata) {
  u8 conf, mode;
  int nr;

  conf = f75375_read8(client, F75375_REG_CONFIG1);
  mode = f75375_read8(client, F75375_REG_FAN_TIMER);
  for (nr = 0; nr < 2; nr++) {
   if (data->kind == f75387) {
    bool manu, duty;

    if (!(mode & (1 << F75387_FAN_CTRL_LINEAR(nr))))
     data->pwm_mode[nr] = 1;

    manu = ((mode >> F75387_FAN_MANU_MODE(nr)) & 1);
    duty = ((mode >> F75387_FAN_DUTY_MODE(nr)) & 1);
    if (!manu && duty)

     data->pwm_enable[nr] = 4;
    else if (manu && !duty)

     data->pwm_enable[nr] = 3;
    else if (!manu && !duty)

     data->pwm_enable[nr] = 2;
    else

     data->pwm_enable[nr] = 1;
   } else {
    if (!(conf & (1 << F75375_FAN_CTRL_LINEAR(nr))))
     data->pwm_mode[nr] = 1;

    switch ((mode >> FAN_CTRL_MODE(nr)) & 3) {
    case 0:
     data->pwm_enable[nr] = 3;
     break;
    case 1:
     data->pwm_enable[nr] = 2;
     break;
    default:
     data->pwm_enable[nr] = 1;
     break;
    }
   }
  }
  return;
 }

 set_pwm_enable_direct(client, 0, f75375s_pdata->pwm_enable[0]);
 set_pwm_enable_direct(client, 1, f75375s_pdata->pwm_enable[1]);
 for (nr = 0; nr < 2; nr++) {
  if (auto_mode_enabled(f75375s_pdata->pwm_enable[nr]) ||
      !duty_mode_enabled(f75375s_pdata->pwm_enable[nr]))
   continue;
  data->pwm[nr] = clamp_val(f75375s_pdata->pwm[nr], 0, 255);
  f75375_write_pwm(client, nr);
 }

}
