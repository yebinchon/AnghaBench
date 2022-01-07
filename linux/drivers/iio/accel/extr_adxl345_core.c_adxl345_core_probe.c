
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct adxl345_data {int type; struct regmap* regmap; int data_range; } ;
typedef enum adxl345_device_type { ____Placeholder_adxl345_device_type } adxl345_device_type ;


 int ADXL345_DATA_FORMAT_FULL_RES ;
 int ADXL345_DEVID ;
 int ADXL345_POWER_CTL_MEASURE ;
 int ADXL345_POWER_CTL_STANDBY ;
 int ADXL345_REG_DATA_FORMAT ;
 int ADXL345_REG_DEVID ;
 int ADXL345_REG_POWER_CTL ;
 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int adxl345_channels ;
 int adxl345_info ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct adxl345_data* iio_priv (struct iio_dev*) ;
 int regmap_read (struct regmap*,int ,int *) ;
 int regmap_write (struct regmap*,int ,int ) ;

int adxl345_core_probe(struct device *dev, struct regmap *regmap,
         enum adxl345_device_type type, const char *name)
{
 struct adxl345_data *data;
 struct iio_dev *indio_dev;
 u32 regval;
 int ret;

 ret = regmap_read(regmap, ADXL345_REG_DEVID, &regval);
 if (ret < 0) {
  dev_err(dev, "Error reading device ID: %d\n", ret);
  return ret;
 }

 if (regval != ADXL345_DEVID) {
  dev_err(dev, "Invalid device ID: %x, expected %x\n",
   regval, ADXL345_DEVID);
  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 dev_set_drvdata(dev, indio_dev);
 data->regmap = regmap;
 data->type = type;

 data->data_range = ADXL345_DATA_FORMAT_FULL_RES;

 ret = regmap_write(data->regmap, ADXL345_REG_DATA_FORMAT,
      data->data_range);
 if (ret < 0) {
  dev_err(dev, "Failed to set data range: %d\n", ret);
  return ret;
 }

 indio_dev->dev.parent = dev;
 indio_dev->name = name;
 indio_dev->info = &adxl345_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = adxl345_channels;
 indio_dev->num_channels = ARRAY_SIZE(adxl345_channels);


 ret = regmap_write(data->regmap, ADXL345_REG_POWER_CTL,
      ADXL345_POWER_CTL_MEASURE);
 if (ret < 0) {
  dev_err(dev, "Failed to enable measurement mode: %d\n", ret);
  return ret;
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(dev, "iio_device_register failed: %d\n", ret);
  regmap_write(data->regmap, ADXL345_REG_POWER_CTL,
        ADXL345_POWER_CTL_STANDBY);
 }

 return ret;
}
