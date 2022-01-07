
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int gpio_reset; } ;


 int gpiod_set_value (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tc358764_reset(struct tc358764 *ctx)
{
 gpiod_set_value(ctx->gpio_reset, 1);
 usleep_range(1000, 2000);
 gpiod_set_value(ctx->gpio_reset, 0);
 usleep_range(1000, 2000);
}
