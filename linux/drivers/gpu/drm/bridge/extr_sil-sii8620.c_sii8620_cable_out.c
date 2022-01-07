
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sii8620 {int dev; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 int sii8620_hw_off (struct sii8620*) ;
 TYPE_1__* to_i2c_client (int ) ;

__attribute__((used)) static void sii8620_cable_out(struct sii8620 *ctx)
{
 disable_irq(to_i2c_client(ctx->dev)->irq);
 sii8620_hw_off(ctx);
}
