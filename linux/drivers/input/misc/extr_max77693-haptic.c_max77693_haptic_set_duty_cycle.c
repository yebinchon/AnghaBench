
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_args {int period; } ;
struct max77693_haptic {int pwm_duty; int dev; int pwm_dev; } ;


 int dev_err (int ,char*,int) ;
 int pwm_config (int ,int,int) ;
 int pwm_get_args (int ,struct pwm_args*) ;

__attribute__((used)) static int max77693_haptic_set_duty_cycle(struct max77693_haptic *haptic)
{
 struct pwm_args pargs;
 int delta;
 int error;

 pwm_get_args(haptic->pwm_dev, &pargs);
 delta = (pargs.period + haptic->pwm_duty) / 2;
 error = pwm_config(haptic->pwm_dev, delta, pargs.period);
 if (error) {
  dev_err(haptic->dev, "failed to configure pwm: %d\n", error);
  return error;
 }

 return 0;
}
