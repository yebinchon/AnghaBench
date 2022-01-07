
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int modes; int * info; int num_channels; int channels; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct bme680_data {int oversampling_humid; int oversampling_press; int oversampling_temp; int heater_temp; int heater_dur; int bme680; struct regmap* regmap; } ;


 scalar_t__ ACPI_HANDLE (struct device*) ;
 int ARRAY_SIZE (int ) ;
 unsigned int BME680_CHIP_ID_VAL ;
 int BME680_CMD_SOFTRESET ;
 int BME680_REG_CHIP_ID ;
 int BME680_REG_SOFT_RESET ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int bme680_channels ;
 int bme680_chip_config (struct bme680_data*) ;
 int bme680_gas_config (struct bme680_data*) ;
 int bme680_info ;
 char* bme680_match_acpi_device (struct device*) ;
 int bme680_read_calib (struct bme680_data*,int *) ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 struct bme680_data* iio_priv (struct iio_dev*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,int ) ;

int bme680_core_probe(struct device *dev, struct regmap *regmap,
        const char *name)
{
 struct iio_dev *indio_dev;
 struct bme680_data *data;
 unsigned int val;
 int ret;

 ret = regmap_write(regmap, BME680_REG_SOFT_RESET,
      BME680_CMD_SOFTRESET);
 if (ret < 0) {
  dev_err(dev, "Failed to reset chip\n");
  return ret;
 }

 ret = regmap_read(regmap, BME680_REG_CHIP_ID, &val);
 if (ret < 0) {
  dev_err(dev, "Error reading chip ID\n");
  return ret;
 }

 if (val != BME680_CHIP_ID_VAL) {
  dev_err(dev, "Wrong chip ID, got %x expected %x\n",
    val, BME680_CHIP_ID_VAL);
  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 if (!name && ACPI_HANDLE(dev))
  name = bme680_match_acpi_device(dev);

 data = iio_priv(indio_dev);
 dev_set_drvdata(dev, indio_dev);
 data->regmap = regmap;
 indio_dev->dev.parent = dev;
 indio_dev->name = name;
 indio_dev->channels = bme680_channels;
 indio_dev->num_channels = ARRAY_SIZE(bme680_channels);
 indio_dev->info = &bme680_info;
 indio_dev->modes = INDIO_DIRECT_MODE;


 data->oversampling_humid = 2;
 data->oversampling_press = 4;
 data->oversampling_temp = 8;
 data->heater_temp = 320;
 data->heater_dur = 150;

 ret = bme680_chip_config(data);
 if (ret < 0) {
  dev_err(dev, "failed to set chip_config data\n");
  return ret;
 }

 ret = bme680_gas_config(data);
 if (ret < 0) {
  dev_err(dev, "failed to set gas config data\n");
  return ret;
 }

 ret = bme680_read_calib(data, &data->bme680);
 if (ret < 0) {
  dev_err(dev,
   "failed to read calibration coefficients at probe\n");
  return ret;
 }

 return devm_iio_device_register(dev, indio_dev);
}
