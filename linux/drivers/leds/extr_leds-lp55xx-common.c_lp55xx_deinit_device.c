
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_platform_data {int enable_gpio; } ;
struct lp55xx_chip {scalar_t__ clk; struct lp55xx_platform_data* pdata; } ;


 int clk_disable_unprepare (scalar_t__) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;

void lp55xx_deinit_device(struct lp55xx_chip *chip)
{
 struct lp55xx_platform_data *pdata = chip->pdata;

 if (chip->clk)
  clk_disable_unprepare(chip->clk);

 if (gpio_is_valid(pdata->enable_gpio))
  gpio_set_value(pdata->enable_gpio, 0);
}
