
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3601x_led {int regmap; int lock; int fled_cdev; } ;
struct i2c_client {int dummy; } ;


 int LM3601X_ENABLE_MASK ;
 int LM3601X_ENABLE_REG ;
 int LM3601X_MODE_STANDBY ;
 struct lm3601x_led* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_flash_unregister (int *) ;
 int mutex_destroy (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lm3601x_remove(struct i2c_client *client)
{
 struct lm3601x_led *led = i2c_get_clientdata(client);

 led_classdev_flash_unregister(&led->fled_cdev);
 mutex_destroy(&led->lock);

 return regmap_update_bits(led->regmap, LM3601X_ENABLE_REG,
      LM3601X_ENABLE_MASK,
      LM3601X_MODE_STANDBY);
}
