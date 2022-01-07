
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pwm_state {int enabled; int duty_cycle; } ;
struct pwm_fan_ctx {unsigned long pwm_value; int lock; TYPE_2__* pwm; } ;
struct TYPE_4__ {unsigned long period; } ;
struct TYPE_5__ {TYPE_1__ args; } ;


 int DIV_ROUND_UP (unsigned long,int ) ;
 int MAX_PWM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_apply_state (TYPE_2__*,struct pwm_state*) ;
 int pwm_init_state (TYPE_2__*,struct pwm_state*) ;

__attribute__((used)) static int __set_pwm(struct pwm_fan_ctx *ctx, unsigned long pwm)
{
 unsigned long period;
 int ret = 0;
 struct pwm_state state = { };

 mutex_lock(&ctx->lock);
 if (ctx->pwm_value == pwm)
  goto exit_set_pwm_err;

 pwm_init_state(ctx->pwm, &state);
 period = ctx->pwm->args.period;
 state.duty_cycle = DIV_ROUND_UP(pwm * (period - 1), MAX_PWM);
 state.enabled = pwm ? 1 : 0;

 ret = pwm_apply_state(ctx->pwm, &state);
 if (!ret)
  ctx->pwm_value = pwm;
exit_set_pwm_err:
 mutex_unlock(&ctx->lock);
 return ret;
}
