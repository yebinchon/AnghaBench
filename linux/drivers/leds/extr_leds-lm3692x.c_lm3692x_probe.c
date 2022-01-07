
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness_set_blocking; } ;
struct lm3692x_led {int regmap; int model_id; TYPE_1__ led_dev; struct i2c_client* client; int lock; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct lm3692x_led* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm3692x_led*) ;
 int lm3692x_brightness_set ;
 int lm3692x_init (struct lm3692x_led*) ;
 int lm3692x_probe_dt (struct lm3692x_led*) ;
 int lm3692x_regmap_config ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm3692x_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct lm3692x_led *led;
 int ret;

 led = devm_kzalloc(&client->dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 mutex_init(&led->lock);
 led->client = client;
 led->led_dev.brightness_set_blocking = lm3692x_brightness_set;
 led->model_id = id->driver_data;
 i2c_set_clientdata(client, led);

 led->regmap = devm_regmap_init_i2c(client, &lm3692x_regmap_config);
 if (IS_ERR(led->regmap)) {
  ret = PTR_ERR(led->regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 ret = lm3692x_probe_dt(led);
 if (ret)
  return ret;

 ret = lm3692x_init(led);
 if (ret)
  return ret;

 return 0;
}
