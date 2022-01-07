
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raydium_data {int avdd; int vccio; scalar_t__ reset_gpio; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void raydium_i2c_power_off(void *_data)
{
 struct raydium_data *ts = _data;

 if (ts->reset_gpio) {
  gpiod_set_value_cansleep(ts->reset_gpio, 1);
  regulator_disable(ts->vccio);
  regulator_disable(ts->avdd);
 }
}
