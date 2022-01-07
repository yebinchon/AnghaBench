
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixcir_i2c_ts_data {int gpio_reset; } ;


 int IS_ERR_OR_NULL (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 int ndelay (int) ;

__attribute__((used)) static void pixcir_reset(struct pixcir_i2c_ts_data *tsdata)
{
 if (!IS_ERR_OR_NULL(tsdata->gpio_reset)) {
  gpiod_set_value_cansleep(tsdata->gpio_reset, 1);
  ndelay(100);
  gpiod_set_value_cansleep(tsdata->gpio_reset, 0);

  msleep(100);
 }
}
