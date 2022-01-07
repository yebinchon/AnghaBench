
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int enabled; unsigned long period; } ;
struct pwm_beeper {int amplifier_on; int pwm; int amplifier; } ;


 int pwm_apply_state (int ,struct pwm_state*) ;
 int pwm_disable (int ) ;
 int pwm_get_state (int ,struct pwm_state*) ;
 int pwm_set_relative_duty_cycle (struct pwm_state*,int,int) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int pwm_beeper_on(struct pwm_beeper *beeper, unsigned long period)
{
 struct pwm_state state;
 int error;

 pwm_get_state(beeper->pwm, &state);

 state.enabled = 1;
 state.period = period;
 pwm_set_relative_duty_cycle(&state, 50, 100);

 error = pwm_apply_state(beeper->pwm, &state);
 if (error)
  return error;

 if (!beeper->amplifier_on) {
  error = regulator_enable(beeper->amplifier);
  if (error) {
   pwm_disable(beeper->pwm);
   return error;
  }

  beeper->amplifier_on = 1;
 }

 return 0;
}
