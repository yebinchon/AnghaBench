
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timer_list {int dummy; } ;
struct pwm_fan_ctx {int pulses_per_revolution; int rpm; int rpm_timer; int sample_start; int pulses; } ;


 scalar_t__ HZ ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 struct pwm_fan_ctx* ctx ;
 int do_div (int,int) ;
 struct pwm_fan_ctx* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int ktime_get () ;
 int ktime_ms_delta (int ,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int rpm_timer ;

__attribute__((used)) static void sample_timer(struct timer_list *t)
{
 struct pwm_fan_ctx *ctx = from_timer(ctx, t, rpm_timer);
 int pulses;
 u64 tmp;

 pulses = atomic_read(&ctx->pulses);
 atomic_sub(pulses, &ctx->pulses);
 tmp = (u64)pulses * ktime_ms_delta(ktime_get(), ctx->sample_start) * 60;
 do_div(tmp, ctx->pulses_per_revolution * 1000);
 ctx->rpm = tmp;

 ctx->sample_start = ktime_get();
 mod_timer(&ctx->rpm_timer, jiffies + HZ);
}
