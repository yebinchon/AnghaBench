
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_gpio_private_data {int sda; } ;


 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static int i2c_gpio_getsda(void *data)
{
 struct i2c_gpio_private_data *priv = data;

 return gpiod_get_value_cansleep(priv->sda);
}
