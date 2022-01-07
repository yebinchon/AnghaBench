
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int supplies; int gpio_reset; int clk_xtal; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (int ) ;
 int gpiod_set_value (int ,int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int sii8620_hw_off(struct sii8620 *ctx)
{
 clk_disable_unprepare(ctx->clk_xtal);
 gpiod_set_value(ctx->gpio_reset, 1);
 return regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
}
