
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_beeper {int amplifier_on; int pwm; int amplifier; } ;


 int pwm_disable (int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void pwm_beeper_off(struct pwm_beeper *beeper)
{
 if (beeper->amplifier_on) {
  regulator_disable(beeper->amplifier);
  beeper->amplifier_on = 0;
 }

 pwm_disable(beeper->pwm);
}
