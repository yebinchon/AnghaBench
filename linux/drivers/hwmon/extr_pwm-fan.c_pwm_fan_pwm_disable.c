
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_fan_ctx {int rpm_timer; int pwm; } ;


 int del_timer_sync (int *) ;
 int pwm_disable (int ) ;

__attribute__((used)) static void pwm_fan_pwm_disable(void *__ctx)
{
 struct pwm_fan_ctx *ctx = __ctx;
 pwm_disable(ctx->pwm);
 del_timer_sync(&ctx->rpm_timer);
}
