
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isl29018_chip {int type; int calibscale; size_t int_time; int suspended; int regmap; int vcc_reg; int scale; scalar_t__ ucalibscale; int lock; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {char const* name; int modes; TYPE_1__ dev; int num_channels; int channels; int info; } ;
struct i2c_device_id {char* name; int driver_data; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int num_channels; int channels; int indio_info; int regmap_cfg; } ;


 scalar_t__ ACPI_HANDLE (int *) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int INDIO_DIRECT_MODE ;
 size_t ISL29018_INT_TIME_16 ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_add_action_or_reset (int *,int ,struct isl29018_chip*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_regmap_init_i2c (struct i2c_client*,int ) ;
 int devm_regulator_get (int *,char*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct isl29018_chip* iio_priv (struct iio_dev*) ;
 TYPE_2__* isl29018_chip_info_tbl ;
 int isl29018_chip_init (struct isl29018_chip*) ;
 int isl29018_disable_regulator_action ;
 char* isl29018_match_acpi_device (int *,int*) ;
 int ** isl29018_scales ;
 int mutex_init (int *) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int isl29018_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct isl29018_chip *chip;
 struct iio_dev *indio_dev;
 int err;
 const char *name = ((void*)0);
 int dev_id = 0;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*chip));
 if (!indio_dev)
  return -ENOMEM;

 chip = iio_priv(indio_dev);

 i2c_set_clientdata(client, indio_dev);

 if (id) {
  name = id->name;
  dev_id = id->driver_data;
 }

 if (ACPI_HANDLE(&client->dev))
  name = isl29018_match_acpi_device(&client->dev, &dev_id);

 mutex_init(&chip->lock);

 chip->type = dev_id;
 chip->calibscale = 1;
 chip->ucalibscale = 0;
 chip->int_time = ISL29018_INT_TIME_16;
 chip->scale = isl29018_scales[chip->int_time][0];
 chip->suspended = 0;

 chip->vcc_reg = devm_regulator_get(&client->dev, "vcc");
 if (IS_ERR(chip->vcc_reg)) {
  err = PTR_ERR(chip->vcc_reg);
  if (err != -EPROBE_DEFER)
   dev_err(&client->dev, "failed to get VCC regulator!\n");
  return err;
 }

 err = regulator_enable(chip->vcc_reg);
 if (err) {
  dev_err(&client->dev, "failed to enable VCC regulator!\n");
  return err;
 }

 err = devm_add_action_or_reset(&client->dev, isl29018_disable_regulator_action,
     chip);
 if (err) {
  dev_err(&client->dev, "failed to setup regulator cleanup action!\n");
  return err;
 }

 chip->regmap = devm_regmap_init_i2c(client,
    isl29018_chip_info_tbl[dev_id].regmap_cfg);
 if (IS_ERR(chip->regmap)) {
  err = PTR_ERR(chip->regmap);
  dev_err(&client->dev, "regmap initialization fails: %d\n", err);
  return err;
 }

 err = isl29018_chip_init(chip);
 if (err)
  return err;

 indio_dev->info = isl29018_chip_info_tbl[dev_id].indio_info;
 indio_dev->channels = isl29018_chip_info_tbl[dev_id].channels;
 indio_dev->num_channels = isl29018_chip_info_tbl[dev_id].num_channels;
 indio_dev->name = name;
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;

 return devm_iio_device_register(&client->dev, indio_dev);
}
