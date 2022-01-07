
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {int kobj; } ;
struct i2c_client {int addr; TYPE_3__ dev; TYPE_1__* adapter; } ;
struct TYPE_8__ {int max_brightness; char* name; int brightness_set_blocking; int flags; } ;
struct blinkm_led {int id; TYPE_2__ led_cdev; struct i2c_client* i2c_client; } ;
struct blinkm_data {int i2c_addr; int fw_ver; int script_id; struct blinkm_led* blinkm_leds; int update_lock; struct i2c_client* i2c_client; } ;
typedef int blinkm_led_name ;
struct TYPE_7__ {int nr; } ;



 int ENOMEM ;
 int GFP_KERNEL ;

 int LED_CORE_SUSPENDRESUME ;

 int blinkm_group ;
 int blinkm_init_hw (struct i2c_client*) ;
 int blinkm_led_blue_set ;
 int blinkm_led_green_set ;
 int blinkm_led_red_set ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct blinkm_data* devm_kzalloc (TYPE_3__*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct blinkm_data*) ;
 int led_classdev_register (TYPE_3__*,TYPE_2__*) ;
 int led_classdev_unregister (TYPE_2__*) ;
 int mutex_init (int *) ;
 int snprintf (char*,int,char*,int,int) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int blinkm_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct blinkm_data *data;
 struct blinkm_led *led[3];
 int err, i;
 char blinkm_led_name[28];

 data = devm_kzalloc(&client->dev,
   sizeof(struct blinkm_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 data->i2c_addr = 0x08;

 data->fw_ver = 0xfe;


 data->script_id = 0x01;
 data->i2c_client = client;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 err = sysfs_create_group(&client->dev.kobj, &blinkm_group);
 if (err < 0) {
  dev_err(&client->dev, "couldn't register sysfs group\n");
  goto exit;
 }

 for (i = 0; i < 3; i++) {

  led[i] = &data->blinkm_leds[i];
  led[i]->i2c_client = client;
  led[i]->id = i;
  led[i]->led_cdev.max_brightness = 255;
  led[i]->led_cdev.flags = LED_CORE_SUSPENDRESUME;
  switch (i) {
  case 128:
   snprintf(blinkm_led_name, sizeof(blinkm_led_name),
      "blinkm-%d-%d-red",
      client->adapter->nr,
      client->addr);
   led[i]->led_cdev.name = blinkm_led_name;
   led[i]->led_cdev.brightness_set_blocking =
       blinkm_led_red_set;
   err = led_classdev_register(&client->dev,
          &led[i]->led_cdev);
   if (err < 0) {
    dev_err(&client->dev,
     "couldn't register LED %s\n",
     led[i]->led_cdev.name);
    goto failred;
   }
   break;
  case 129:
   snprintf(blinkm_led_name, sizeof(blinkm_led_name),
      "blinkm-%d-%d-green",
      client->adapter->nr,
      client->addr);
   led[i]->led_cdev.name = blinkm_led_name;
   led[i]->led_cdev.brightness_set_blocking =
       blinkm_led_green_set;
   err = led_classdev_register(&client->dev,
          &led[i]->led_cdev);
   if (err < 0) {
    dev_err(&client->dev,
     "couldn't register LED %s\n",
     led[i]->led_cdev.name);
    goto failgreen;
   }
   break;
  case 130:
   snprintf(blinkm_led_name, sizeof(blinkm_led_name),
      "blinkm-%d-%d-blue",
      client->adapter->nr,
      client->addr);
   led[i]->led_cdev.name = blinkm_led_name;
   led[i]->led_cdev.brightness_set_blocking =
       blinkm_led_blue_set;
   err = led_classdev_register(&client->dev,
          &led[i]->led_cdev);
   if (err < 0) {
    dev_err(&client->dev,
     "couldn't register LED %s\n",
     led[i]->led_cdev.name);
    goto failblue;
   }
   break;
  }
 }


 blinkm_init_hw(client);

 return 0;

failblue:
 led_classdev_unregister(&led[129]->led_cdev);

failgreen:
 led_classdev_unregister(&led[128]->led_cdev);

failred:
 sysfs_remove_group(&client->dev.kobj, &blinkm_group);
exit:
 return err;
}
