
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct lp55xx_led* i2c_get_clientdata (struct i2c_client*) ;
 int lp5523_stop_all_engines (struct lp55xx_chip*) ;
 int lp55xx_deinit_device (struct lp55xx_chip*) ;
 int lp55xx_unregister_leds (struct lp55xx_led*,struct lp55xx_chip*) ;
 int lp55xx_unregister_sysfs (struct lp55xx_chip*) ;

__attribute__((used)) static int lp5523_remove(struct i2c_client *client)
{
 struct lp55xx_led *led = i2c_get_clientdata(client);
 struct lp55xx_chip *chip = led->chip;

 lp5523_stop_all_engines(chip);
 lp55xx_unregister_sysfs(chip);
 lp55xx_unregister_leds(led, chip);
 lp55xx_deinit_device(chip);

 return 0;
}
