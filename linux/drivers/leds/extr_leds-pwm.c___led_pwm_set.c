
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_pwm_data {int duty; int pwm; int period; } ;


 int pwm_config (int ,int,int ) ;
 int pwm_disable (int ) ;
 int pwm_enable (int ) ;

__attribute__((used)) static void __led_pwm_set(struct led_pwm_data *led_dat)
{
 int new_duty = led_dat->duty;

 pwm_config(led_dat->pwm, new_duty, led_dat->period);

 if (new_duty == 0)
  pwm_disable(led_dat->pwm);
 else
  pwm_enable(led_dat->pwm);
}
