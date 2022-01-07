
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_fan_ctx {int pulses; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int atomic_inc (int *) ;

__attribute__((used)) static irqreturn_t pulse_handler(int irq, void *dev_id)
{
 struct pwm_fan_ctx *ctx = dev_id;

 atomic_inc(&ctx->pulses);

 return IRQ_HANDLED;
}
