
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {TYPE_1__* bus_recovery_info; } ;
struct TYPE_2__ {int sda_gpiod; } ;


 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static int get_sda_gpio_value(struct i2c_adapter *adap)
{
 return gpiod_get_value_cansleep(adap->bus_recovery_info->sda_gpiod);
}
