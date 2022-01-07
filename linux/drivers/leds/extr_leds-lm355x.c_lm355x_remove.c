
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm355x_reg_data {int regno; } ;
struct lm355x_chip_data {size_t type; int cdev_flash; int cdev_torch; int cdev_indicator; int regmap; struct lm355x_reg_data* regs; } ;
struct i2c_client {int dev; } ;


 size_t REG_OPMODE ;
 int dev_info (int *,char*,int ) ;
 struct lm355x_chip_data* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_unregister (int *) ;
 int * lm355x_name ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int lm355x_remove(struct i2c_client *client)
{
 struct lm355x_chip_data *chip = i2c_get_clientdata(client);
 struct lm355x_reg_data *preg = chip->regs;

 regmap_write(chip->regmap, preg[REG_OPMODE].regno, 0);
 led_classdev_unregister(&chip->cdev_indicator);
 led_classdev_unregister(&chip->cdev_torch);
 led_classdev_unregister(&chip->cdev_flash);
 dev_info(&client->dev, "%s is removed\n", lm355x_name[chip->type]);

 return 0;
}
