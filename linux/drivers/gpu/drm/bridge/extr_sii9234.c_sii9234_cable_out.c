
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sii9234 {scalar_t__ state; int lock; int dev; } ;
struct TYPE_2__ {int irq; } ;


 scalar_t__ ST_OFF ;
 int TPI_DPD_REG ;
 int disable_irq (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sii9234_hw_off (struct sii9234*) ;
 TYPE_1__* to_i2c_client (int ) ;
 int tpi_writeb (struct sii9234*,int ,int ) ;

__attribute__((used)) static void sii9234_cable_out(struct sii9234 *ctx)
{
 mutex_lock(&ctx->lock);

 if (ctx->state == ST_OFF)
  goto unlock;

 disable_irq(to_i2c_client(ctx->dev)->irq);
 tpi_writeb(ctx, TPI_DPD_REG, 0);

 sii9234_hw_off(ctx);

 ctx->state = ST_OFF;

unlock:
 mutex_unlock(&ctx->lock);
}
