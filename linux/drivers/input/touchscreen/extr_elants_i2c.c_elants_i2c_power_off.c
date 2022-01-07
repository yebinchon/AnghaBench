
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elants_data {int vcc33; int vccio; int reset_gpio; } ;


 int IS_ERR_OR_NULL (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void elants_i2c_power_off(void *_data)
{
 struct elants_data *ts = _data;

 if (!IS_ERR_OR_NULL(ts->reset_gpio)) {




  gpiod_set_value_cansleep(ts->reset_gpio, 1);
  regulator_disable(ts->vccio);
  regulator_disable(ts->vcc33);
 }
}
