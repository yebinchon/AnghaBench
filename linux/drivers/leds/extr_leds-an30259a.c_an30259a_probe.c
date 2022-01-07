
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct led_init_data {char* default_label; int devicename; int fwnode; } ;
struct i2c_client {int dev; } ;
struct an30259a {int num_leds; int mutex; TYPE_2__* leds; int regmap; struct i2c_client* client; } ;
struct TYPE_3__ {int blink_set; int brightness_set_blocking; } ;
struct TYPE_4__ {TYPE_1__ cdev; int fwnode; } ;


 int AN30259A_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int an30259a_blink_set ;
 int an30259a_brightness_set ;
 int an30259a_dt_init (struct i2c_client*,struct an30259a*) ;
 int an30259a_init_default_state (TYPE_2__*) ;
 int an30259a_regmap_config ;
 struct an30259a* devm_kzalloc (int *,int,int ) ;
 int devm_led_classdev_register_ext (int *,TYPE_1__*,struct led_init_data*) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct an30259a*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static int an30259a_probe(struct i2c_client *client)
{
 struct an30259a *chip;
 int i, err;

 chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 err = an30259a_dt_init(client, chip);
 if (err < 0)
  return err;

 mutex_init(&chip->mutex);
 chip->client = client;
 i2c_set_clientdata(client, chip);

 chip->regmap = devm_regmap_init_i2c(client, &an30259a_regmap_config);

 for (i = 0; i < chip->num_leds; i++) {
  struct led_init_data init_data = {};

  an30259a_init_default_state(&chip->leds[i]);
  chip->leds[i].cdev.brightness_set_blocking =
   an30259a_brightness_set;
  chip->leds[i].cdev.blink_set = an30259a_blink_set;

  init_data.fwnode = chip->leds[i].fwnode;
  init_data.devicename = AN30259A_NAME;
  init_data.default_label = ":";

  err = devm_led_classdev_register_ext(&client->dev,
       &chip->leds[i].cdev,
       &init_data);
  if (err < 0)
   goto exit;
 }
 return 0;

exit:
 mutex_destroy(&chip->mutex);
 return err;
}
