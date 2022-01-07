
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sii9234 {scalar_t__ state; int lock; int dev; } ;
struct TYPE_2__ {int irq; } ;


 scalar_t__ ST_OFF ;
 int enable_irq (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sii9234_goto_d3 (struct sii9234*) ;
 int sii9234_hw_on (struct sii9234*) ;
 int sii9234_hw_reset (struct sii9234*) ;
 TYPE_1__* to_i2c_client (int ) ;

__attribute__((used)) static void sii9234_cable_in(struct sii9234 *ctx)
{
 int ret;

 mutex_lock(&ctx->lock);
 if (ctx->state != ST_OFF)
  goto unlock;
 ret = sii9234_hw_on(ctx);
 if (ret < 0)
  goto unlock;

 sii9234_hw_reset(ctx);
 sii9234_goto_d3(ctx);

 enable_irq(to_i2c_client(ctx->dev)->irq);

unlock:
 mutex_unlock(&ctx->lock);
}
