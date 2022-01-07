
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3530_platform_data {scalar_t__ mode; scalar_t__ brt_val; } ;
struct TYPE_2__ {int groups; int max_brightness; int brightness_set; int name; } ;
struct lm3530_data {scalar_t__ mode; int enable; TYPE_1__ led_dev; struct lm3530_platform_data* pdata; int * regulator; int brightness; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (int *) ;
 int LED_OFF ;
 scalar_t__ LM3530_BL_MODE_PWM ;
 int LM3530_LED_DEV ;
 int MAX_BRIGHTNESS ;
 int PTR_ERR (int *) ;
 int dev_err (int *,char*,...) ;
 struct lm3530_platform_data* dev_get_platdata (int *) ;
 struct lm3530_data* devm_kzalloc (int *,int,int ) ;
 int * devm_regulator_get (int *,char*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm3530_data*) ;
 int led_classdev_register (int *,TYPE_1__*) ;
 int lm3530_brightness_set ;
 int lm3530_groups ;
 int lm3530_init_registers (struct lm3530_data*) ;

__attribute__((used)) static int lm3530_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct lm3530_platform_data *pdata = dev_get_platdata(&client->dev);
 struct lm3530_data *drvdata;
 int err = 0;

 if (pdata == ((void*)0)) {
  dev_err(&client->dev, "platform data required\n");
  return -ENODEV;
 }


 if (pdata->mode > LM3530_BL_MODE_PWM) {
  dev_err(&client->dev, "Illegal Mode request\n");
  return -EINVAL;
 }

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "I2C_FUNC_I2C not supported\n");
  return -EIO;
 }

 drvdata = devm_kzalloc(&client->dev, sizeof(struct lm3530_data),
    GFP_KERNEL);
 if (drvdata == ((void*)0))
  return -ENOMEM;

 drvdata->mode = pdata->mode;
 drvdata->client = client;
 drvdata->pdata = pdata;
 drvdata->brightness = LED_OFF;
 drvdata->enable = 0;
 drvdata->led_dev.name = LM3530_LED_DEV;
 drvdata->led_dev.brightness_set = lm3530_brightness_set;
 drvdata->led_dev.max_brightness = MAX_BRIGHTNESS;
 drvdata->led_dev.groups = lm3530_groups;

 i2c_set_clientdata(client, drvdata);

 drvdata->regulator = devm_regulator_get(&client->dev, "vin");
 if (IS_ERR(drvdata->regulator)) {
  dev_err(&client->dev, "regulator get failed\n");
  err = PTR_ERR(drvdata->regulator);
  drvdata->regulator = ((void*)0);
  return err;
 }

 if (drvdata->pdata->brt_val) {
  err = lm3530_init_registers(drvdata);
  if (err < 0) {
   dev_err(&client->dev,
    "Register Init failed: %d\n", err);
   return err;
  }
 }
 err = led_classdev_register(&client->dev, &drvdata->led_dev);
 if (err < 0) {
  dev_err(&client->dev, "Register led class failed: %d\n", err);
  return err;
 }

 return 0;
}
