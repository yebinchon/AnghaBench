
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pwm_vibrator {int vcc_on; scalar_t__ pwm; scalar_t__ pwm_dir; int direction_duty_cycle; int level; int vcc; TYPE_2__* input; } ;
struct pwm_state {int enabled; int duty_cycle; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dev_err (struct device*,char*,int) ;
 int pwm_apply_state (scalar_t__,struct pwm_state*) ;
 int pwm_disable (scalar_t__) ;
 int pwm_get_state (scalar_t__,struct pwm_state*) ;
 int pwm_set_relative_duty_cycle (struct pwm_state*,int ,int) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int pwm_vibrator_start(struct pwm_vibrator *vibrator)
{
 struct device *pdev = vibrator->input->dev.parent;
 struct pwm_state state;
 int err;

 if (!vibrator->vcc_on) {
  err = regulator_enable(vibrator->vcc);
  if (err) {
   dev_err(pdev, "failed to enable regulator: %d", err);
   return err;
  }
  vibrator->vcc_on = 1;
 }

 pwm_get_state(vibrator->pwm, &state);
 pwm_set_relative_duty_cycle(&state, vibrator->level, 0xffff);
 state.enabled = 1;

 err = pwm_apply_state(vibrator->pwm, &state);
 if (err) {
  dev_err(pdev, "failed to apply pwm state: %d", err);
  return err;
 }

 if (vibrator->pwm_dir) {
  pwm_get_state(vibrator->pwm_dir, &state);
  state.duty_cycle = vibrator->direction_duty_cycle;
  state.enabled = 1;

  err = pwm_apply_state(vibrator->pwm_dir, &state);
  if (err) {
   dev_err(pdev, "failed to apply dir-pwm state: %d", err);
   pwm_disable(vibrator->pwm);
   return err;
  }
 }

 return 0;
}
