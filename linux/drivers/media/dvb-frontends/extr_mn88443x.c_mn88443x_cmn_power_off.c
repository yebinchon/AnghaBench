
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mn88443x_priv {int mclk; int reset_gpio; } ;


 int clk_disable_unprepare (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void mn88443x_cmn_power_off(struct mn88443x_priv *chip)
{
 gpiod_set_value_cansleep(chip->reset_gpio, 1);

 clk_disable_unprepare(chip->mclk);
}
