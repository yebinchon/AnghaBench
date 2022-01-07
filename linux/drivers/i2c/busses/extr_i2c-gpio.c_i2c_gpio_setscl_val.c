
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_gpio_private_data {int scl; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void i2c_gpio_setscl_val(void *data, int state)
{
 struct i2c_gpio_private_data *priv = data;

 gpiod_set_value_cansleep(priv->scl, state);
}
