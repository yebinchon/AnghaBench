
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lm3642_platform_data {int strobe_pin; int torch_pin; int tx_pin; } ;
struct TYPE_3__ {char* name; int max_brightness; char* default_trigger; int brightness_set_blocking; int groups; } ;
struct lm3642_chip_data {TYPE_1__ cdev_flash; TYPE_1__ cdev_torch; int * dev; TYPE_1__ cdev_indicator; int lock; int regmap; int strobe_pin; int torch_pin; int tx_pin; struct lm3642_platform_data* pdata; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct device {int dummy; } ;


 int ENODATA ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct lm3642_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 struct lm3642_chip_data* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm3642_chip_data*) ;
 int led_classdev_register (struct device*,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int lm3642_chip_init (struct lm3642_chip_data*) ;
 int lm3642_flash_groups ;
 int lm3642_indicator_brightness_set ;
 int lm3642_regmap ;
 int lm3642_strobe_brightness_set ;
 int lm3642_torch_brightness_set ;
 int lm3642_torch_groups ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm3642_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct lm3642_platform_data *pdata = dev_get_platdata(&client->dev);
 struct lm3642_chip_data *chip;

 int err;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "i2c functionality check fail.\n");
  return -EOPNOTSUPP;
 }

 if (pdata == ((void*)0)) {
  dev_err(&client->dev, "needs Platform Data.\n");
  return -ENODATA;
 }

 chip = devm_kzalloc(&client->dev,
       sizeof(struct lm3642_chip_data), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->dev = &client->dev;
 chip->pdata = pdata;

 chip->tx_pin = pdata->tx_pin;
 chip->torch_pin = pdata->torch_pin;
 chip->strobe_pin = pdata->strobe_pin;

 chip->regmap = devm_regmap_init_i2c(client, &lm3642_regmap);
 if (IS_ERR(chip->regmap)) {
  err = PTR_ERR(chip->regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   err);
  return err;
 }

 mutex_init(&chip->lock);
 i2c_set_clientdata(client, chip);

 err = lm3642_chip_init(chip);
 if (err < 0)
  goto err_out;


 chip->cdev_flash.name = "flash";
 chip->cdev_flash.max_brightness = 16;
 chip->cdev_flash.brightness_set_blocking = lm3642_strobe_brightness_set;
 chip->cdev_flash.default_trigger = "flash";
 chip->cdev_flash.groups = lm3642_flash_groups,
 err = led_classdev_register((struct device *)
        &client->dev, &chip->cdev_flash);
 if (err < 0) {
  dev_err(chip->dev, "failed to register flash\n");
  goto err_out;
 }


 chip->cdev_torch.name = "torch";
 chip->cdev_torch.max_brightness = 8;
 chip->cdev_torch.brightness_set_blocking = lm3642_torch_brightness_set;
 chip->cdev_torch.default_trigger = "torch";
 chip->cdev_torch.groups = lm3642_torch_groups,
 err = led_classdev_register((struct device *)
        &client->dev, &chip->cdev_torch);
 if (err < 0) {
  dev_err(chip->dev, "failed to register torch\n");
  goto err_create_torch_file;
 }


 chip->cdev_indicator.name = "indicator";
 chip->cdev_indicator.max_brightness = 8;
 chip->cdev_indicator.brightness_set_blocking =
      lm3642_indicator_brightness_set;
 err = led_classdev_register((struct device *)
        &client->dev, &chip->cdev_indicator);
 if (err < 0) {
  dev_err(chip->dev, "failed to register indicator\n");
  goto err_create_indicator_file;
 }

 dev_info(&client->dev, "LM3642 is initialized\n");
 return 0;

err_create_indicator_file:
 led_classdev_unregister(&chip->cdev_torch);
err_create_torch_file:
 led_classdev_unregister(&chip->cdev_flash);
err_out:
 return err;
}
