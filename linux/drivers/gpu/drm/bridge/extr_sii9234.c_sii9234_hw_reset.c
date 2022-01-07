
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int gpio_reset; } ;


 int gpiod_set_value (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void sii9234_hw_reset(struct sii9234 *ctx)
{
 gpiod_set_value(ctx->gpio_reset, 1);
 msleep(20);
 gpiod_set_value(ctx->gpio_reset, 0);
}
