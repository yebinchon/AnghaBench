
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3642_chip_data {int regmap; int cdev_flash; int cdev_torch; int cdev_indicator; } ;
struct i2c_client {int dummy; } ;


 int REG_ENABLE ;
 struct lm3642_chip_data* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_unregister (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int lm3642_remove(struct i2c_client *client)
{
 struct lm3642_chip_data *chip = i2c_get_clientdata(client);

 led_classdev_unregister(&chip->cdev_indicator);
 led_classdev_unregister(&chip->cdev_torch);
 led_classdev_unregister(&chip->cdev_flash);
 regmap_write(chip->regmap, REG_ENABLE, 0);
 return 0;
}
