
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int brightness_set_blocking; } ;
struct is31fl319x_led {scalar_t__ max_microamp; TYPE_2__ cdev; struct is31fl319x_chip* chip; scalar_t__ configured; } ;
struct is31fl319x_chip {int lock; struct is31fl319x_led* leds; TYPE_1__* cdef; int audio_gain_db; int regmap; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int adapter; } ;
struct TYPE_3__ {int num_leds; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int IS31FL319X_CONFIG2 ;
 scalar_t__ IS31FL319X_CURRENT_MAX ;
 int IS31FL319X_RESET ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 struct is31fl319x_chip* devm_kzalloc (struct device*,int,int ) ;
 int devm_led_classdev_register (struct device*,TYPE_2__*) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct is31fl319x_chip*) ;
 int is31fl319x_brightness_set ;
 int is31fl319x_db_to_gain (int ) ;
 int is31fl319x_microamp_to_cs (struct device*,scalar_t__) ;
 int is31fl319x_parse_dt (struct device*,struct is31fl319x_chip*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int regmap_config ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int is31fl319x_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct is31fl319x_chip *is31;
 struct device *dev = &client->dev;
 int err;
 int i = 0;
 u32 aggregated_led_microamp = IS31FL319X_CURRENT_MAX;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -EIO;

 is31 = devm_kzalloc(&client->dev, sizeof(*is31), GFP_KERNEL);
 if (!is31)
  return -ENOMEM;

 mutex_init(&is31->lock);

 err = is31fl319x_parse_dt(&client->dev, is31);
 if (err)
  goto free_mutex;

 is31->client = client;
 is31->regmap = devm_regmap_init_i2c(client, &regmap_config);
 if (IS_ERR(is31->regmap)) {
  dev_err(&client->dev, "failed to allocate register map\n");
  err = PTR_ERR(is31->regmap);
  goto free_mutex;
 }

 i2c_set_clientdata(client, is31);


 err = regmap_write(is31->regmap, IS31FL319X_RESET, 0x00);
 if (err < 0) {
  dev_err(&client->dev, "no response from chip write: err = %d\n",
   err);
  err = -EIO;
  goto free_mutex;
 }






 for (i = 0; i < is31->cdef->num_leds; i++)
  if (is31->leds[i].configured &&
      is31->leds[i].max_microamp < aggregated_led_microamp)
   aggregated_led_microamp = is31->leds[i].max_microamp;

 regmap_write(is31->regmap, IS31FL319X_CONFIG2,
       is31fl319x_microamp_to_cs(dev, aggregated_led_microamp) |
       is31fl319x_db_to_gain(is31->audio_gain_db));

 for (i = 0; i < is31->cdef->num_leds; i++) {
  struct is31fl319x_led *led = &is31->leds[i];

  if (!led->configured)
   continue;

  led->chip = is31;
  led->cdev.brightness_set_blocking = is31fl319x_brightness_set;

  err = devm_led_classdev_register(&client->dev, &led->cdev);
  if (err < 0)
   goto free_mutex;
 }

 return 0;

free_mutex:
 mutex_destroy(&is31->lock);
 return err;
}
