
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_fan_ctx {int pwm_fan_max_state; unsigned long* pwm_fan_cooling_levels; int pwm_fan_state; } ;



__attribute__((used)) static void pwm_fan_update_state(struct pwm_fan_ctx *ctx, unsigned long pwm)
{
 int i;

 for (i = 0; i < ctx->pwm_fan_max_state; ++i)
  if (pwm < ctx->pwm_fan_cooling_levels[i + 1])
   break;

 ctx->pwm_fan_state = i;
}
