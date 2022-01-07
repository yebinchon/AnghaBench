
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp3952_led_array {int enable_gpio; } ;
struct i2c_client {int dummy; } ;


 int LP3952_LED_ALL ;
 int gpiod_set_value (int ,int ) ;
 struct lp3952_led_array* i2c_get_clientdata (struct i2c_client*) ;
 int lp3952_on_off (struct lp3952_led_array*,int ,int) ;

__attribute__((used)) static int lp3952_remove(struct i2c_client *client)
{
 struct lp3952_led_array *priv;

 priv = i2c_get_clientdata(client);
 lp3952_on_off(priv, LP3952_LED_ALL, 0);
 gpiod_set_value(priv->enable_gpio, 0);

 return 0;
}
