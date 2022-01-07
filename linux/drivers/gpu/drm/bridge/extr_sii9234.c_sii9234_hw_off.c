
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int supplies; int gpio_reset; } ;


 int ARRAY_SIZE (int ) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void sii9234_hw_off(struct sii9234 *ctx)
{
 gpiod_set_value(ctx->gpio_reset, 1);
 msleep(20);
 regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
}
