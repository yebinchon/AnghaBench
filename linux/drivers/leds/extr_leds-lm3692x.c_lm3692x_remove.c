
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3692x_led {int lock; TYPE_1__* client; scalar_t__ regulator; scalar_t__ enable_gpio; int regmap; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int LM3692X_DEVICE_EN ;
 int LM3692X_EN ;
 int dev_err (int *,char*) ;
 int gpiod_direction_output (scalar_t__,int ) ;
 struct lm3692x_led* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_destroy (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int lm3692x_remove(struct i2c_client *client)
{
 struct lm3692x_led *led = i2c_get_clientdata(client);
 int ret;

 ret = regmap_update_bits(led->regmap, LM3692X_EN, LM3692X_DEVICE_EN, 0);
 if (ret) {
  dev_err(&led->client->dev, "Failed to disable regulator\n");
  return ret;
 }

 if (led->enable_gpio)
  gpiod_direction_output(led->enable_gpio, 0);

 if (led->regulator) {
  ret = regulator_disable(led->regulator);
  if (ret)
   dev_err(&led->client->dev,
    "Failed to disable regulator\n");
 }

 mutex_destroy(&led->lock);

 return 0;
}
