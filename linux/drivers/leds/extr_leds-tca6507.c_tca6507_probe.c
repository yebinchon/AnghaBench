
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int num_leds; TYPE_1__* leds; } ;
struct tca6507_platform_data {TYPE_2__ leds; } ;
struct TYPE_7__ {scalar_t__ name; int blink_set; int brightness_set; int default_trigger; } ;
struct tca6507_led {int num; int bank; TYPE_3__ led_cdev; struct tca6507_chip* chip; } ;
struct tca6507_chip {int reg_set; struct tca6507_led* leds; int work; int lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_5__ {int default_trigger; scalar_t__ name; int flags; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct tca6507_platform_data*) ;
 int NUM_LEDS ;
 int PTR_ERR (struct tca6507_platform_data*) ;
 int dev_err (int *,char*,int) ;
 struct tca6507_platform_data* dev_get_platdata (int *) ;
 struct tca6507_chip* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct tca6507_chip*) ;
 int led_classdev_register (int *,TYPE_3__*) ;
 int led_classdev_unregister (TYPE_3__*) ;
 int schedule_work (int *) ;
 int spin_lock_init (int *) ;
 int tca6507_blink_set ;
 int tca6507_brightness_set ;
 struct tca6507_platform_data* tca6507_led_dt_init (struct i2c_client*) ;
 int tca6507_probe_gpios (struct i2c_client*,struct tca6507_chip*,struct tca6507_platform_data*) ;
 int tca6507_work ;

__attribute__((used)) static int tca6507_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct tca6507_chip *tca;
 struct i2c_adapter *adapter;
 struct tca6507_platform_data *pdata;
 int err;
 int i = 0;

 adapter = client->adapter;
 pdata = dev_get_platdata(&client->dev);

 if (!i2c_check_functionality(adapter, I2C_FUNC_I2C))
  return -EIO;

 if (!pdata || pdata->leds.num_leds != NUM_LEDS) {
  pdata = tca6507_led_dt_init(client);
  if (IS_ERR(pdata)) {
   dev_err(&client->dev, "Need %d entries in platform-data list\n",
    NUM_LEDS);
   return PTR_ERR(pdata);
  }
 }
 tca = devm_kzalloc(&client->dev, sizeof(*tca), GFP_KERNEL);
 if (!tca)
  return -ENOMEM;

 tca->client = client;
 INIT_WORK(&tca->work, tca6507_work);
 spin_lock_init(&tca->lock);
 i2c_set_clientdata(client, tca);

 for (i = 0; i < NUM_LEDS; i++) {
  struct tca6507_led *l = tca->leds + i;

  l->chip = tca;
  l->num = i;
  if (pdata->leds.leds[i].name && !pdata->leds.leds[i].flags) {
   l->led_cdev.name = pdata->leds.leds[i].name;
   l->led_cdev.default_trigger
    = pdata->leds.leds[i].default_trigger;
   l->led_cdev.brightness_set = tca6507_brightness_set;
   l->led_cdev.blink_set = tca6507_blink_set;
   l->bank = -1;
   err = led_classdev_register(&client->dev,
          &l->led_cdev);
   if (err < 0)
    goto exit;
  }
 }
 err = tca6507_probe_gpios(client, tca, pdata);
 if (err)
  goto exit;

 tca->reg_set = 0x7f;
 schedule_work(&tca->work);

 return 0;
exit:
 while (i--) {
  if (tca->leds[i].led_cdev.name)
   led_classdev_unregister(&tca->leds[i].led_cdev);
 }
 return err;
}
