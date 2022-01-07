
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct bd2802_led_platform_data {int reset_gpio; } ;
struct bd2802_led {struct i2c_client* client; int rwsem; int rgb_current; int wave_pattern; struct bd2802_led_platform_data* pdata; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ attr; } ;


 int ARRAY_SIZE (TYPE_2__**) ;
 int BD2802_CURRENT_032 ;
 int BD2802_PATTERN_HALF ;
 int BD2802_REG_CLKSETUP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 TYPE_2__** bd2802_attributes ;
 int bd2802_register_led_classdev (struct bd2802_led*) ;
 int bd2802_write_byte (struct i2c_client*,int ,int) ;
 int dev_err (int *,char*,...) ;
 struct bd2802_led_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int) ;
 int device_create_file (int *,TYPE_2__*) ;
 int device_remove_file (int *,TYPE_2__*) ;
 struct bd2802_led* devm_kzalloc (int *,int,int ) ;
 int gpio_request_one (int ,int ,char*) ;
 int gpio_set_value (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct bd2802_led*) ;
 int init_rwsem (int *) ;
 int udelay (int) ;

__attribute__((used)) static int bd2802_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct bd2802_led *led;
 struct bd2802_led_platform_data *pdata;
 int ret, i;

 led = devm_kzalloc(&client->dev, sizeof(struct bd2802_led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 led->client = client;
 pdata = led->pdata = dev_get_platdata(&client->dev);
 i2c_set_clientdata(client, led);


 gpio_request_one(pdata->reset_gpio, GPIOF_OUT_INIT_HIGH, "RGB_RESETB");


 udelay(100);


 ret = bd2802_write_byte(client, BD2802_REG_CLKSETUP, 0x00);
 if (ret < 0) {
  dev_err(&client->dev, "failed to detect device\n");
  return ret;
 } else
  dev_info(&client->dev, "return 0x%02x\n", ret);


 gpio_set_value(led->pdata->reset_gpio, 0);


 led->wave_pattern = BD2802_PATTERN_HALF;
 led->rgb_current = BD2802_CURRENT_032;

 init_rwsem(&led->rwsem);

 for (i = 0; i < ARRAY_SIZE(bd2802_attributes); i++) {
  ret = device_create_file(&led->client->dev,
      bd2802_attributes[i]);
  if (ret) {
   dev_err(&led->client->dev, "failed: sysfs file %s\n",
     bd2802_attributes[i]->attr.name);
   goto failed_unregister_dev_file;
  }
 }

 ret = bd2802_register_led_classdev(led);
 if (ret < 0)
  goto failed_unregister_dev_file;

 return 0;

failed_unregister_dev_file:
 for (i--; i >= 0; i--)
  device_remove_file(&led->client->dev, bd2802_attributes[i]);
 return ret;
}
