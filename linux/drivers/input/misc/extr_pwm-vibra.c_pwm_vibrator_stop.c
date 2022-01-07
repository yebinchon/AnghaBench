
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_vibrator {int vcc_on; int vcc; scalar_t__ pwm; scalar_t__ pwm_dir; } ;


 int pwm_disable (scalar_t__) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void pwm_vibrator_stop(struct pwm_vibrator *vibrator)
{
 if (vibrator->pwm_dir)
  pwm_disable(vibrator->pwm_dir);
 pwm_disable(vibrator->pwm);

 if (vibrator->vcc_on) {
  regulator_disable(vibrator->vcc);
  vibrator->vcc_on = 0;
 }
}
