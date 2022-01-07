
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmp108 {int orig_config; int ready_time; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int adapter; struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int TMP108_CONF_MODE_MASK ;
 int TMP108_CONF_TM ;
 int TMP108_CONVERSION_TIME_MS ;
 int TMP108_MODE_CONTINUOUS ;
 int TMP108_MODE_SHUTDOWN ;
 int TMP108_REG_CONF ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct tmp108*) ;
 int devm_add_action_or_reset (struct device*,int ,struct tmp108*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct tmp108*,int *,int *) ;
 struct tmp108* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int tmp108_chip_info ;
 int tmp108_regmap_config ;
 int tmp108_restore_config ;

__attribute__((used)) static int tmp108_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct tmp108 *tmp108;
 int err;
 u32 config;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_err(dev,
   "adapter doesn't support SMBus word transactions\n");
  return -ENODEV;
 }

 tmp108 = devm_kzalloc(dev, sizeof(*tmp108), GFP_KERNEL);
 if (!tmp108)
  return -ENOMEM;

 dev_set_drvdata(dev, tmp108);

 tmp108->regmap = devm_regmap_init_i2c(client, &tmp108_regmap_config);
 if (IS_ERR(tmp108->regmap)) {
  err = PTR_ERR(tmp108->regmap);
  dev_err(dev, "regmap init failed: %d", err);
  return err;
 }

 err = regmap_read(tmp108->regmap, TMP108_REG_CONF, &config);
 if (err < 0) {
  dev_err(dev, "error reading config register: %d", err);
  return err;
 }
 tmp108->orig_config = config;


 config &= ~TMP108_CONF_MODE_MASK;
 config |= TMP108_MODE_CONTINUOUS;


 config &= ~TMP108_CONF_TM;

 err = regmap_write(tmp108->regmap, TMP108_REG_CONF, config);
 if (err < 0) {
  dev_err(dev, "error writing config register: %d", err);
  return err;
 }

 tmp108->ready_time = jiffies;
 if ((tmp108->orig_config & TMP108_CONF_MODE_MASK) ==
     TMP108_MODE_SHUTDOWN)
  tmp108->ready_time +=
   msecs_to_jiffies(TMP108_CONVERSION_TIME_MS);

 err = devm_add_action_or_reset(dev, tmp108_restore_config, tmp108);
 if (err) {
  dev_err(dev, "add action or reset failed: %d", err);
  return err;
 }

 hwmon_dev = devm_hwmon_device_register_with_info(dev, client->name,
        tmp108,
        &tmp108_chip_info,
        ((void*)0));
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
