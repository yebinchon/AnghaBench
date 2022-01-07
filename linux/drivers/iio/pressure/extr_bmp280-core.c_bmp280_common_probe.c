
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_6__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int modes; int * info; int channels; TYPE_1__ dev; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int bmp280; int bmp180; } ;
struct bmp280_data {int start_up_time; struct gpio_desc* vddd; struct gpio_desc* vdda; struct device* dev; TYPE_2__ calib; TYPE_3__* chip_info; struct regmap* regmap; void* oversampling_temp; void* oversampling_humid; void* oversampling_press; int lock; } ;
struct TYPE_8__ {int (* chip_config ) (struct bmp280_data*) ;} ;





 int BMP280_REG_ID ;
 int EINVAL ;
 int ENOMEM ;
 int GPIOD_OUT_HIGH ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 TYPE_3__ bme280_chip_info ;
 int bmp085_fetch_eoc_irq (struct device*,char const*,int,struct bmp280_data*) ;
 TYPE_3__ bmp180_chip_info ;
 int bmp180_read_calib (struct bmp280_data*,int *) ;
 int bmp280_channels ;
 TYPE_3__ bmp280_chip_info ;
 int bmp280_info ;
 int bmp280_read_calib (struct bmp280_data*,int *,unsigned int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct gpio_desc* devm_gpiod_get (struct device*,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 void* devm_regulator_get (struct device*,char*) ;
 int gpiod_set_value (struct gpio_desc*,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct bmp280_data* iio_priv (struct iio_dev*) ;
 void* ilog2 (int) ;
 int mutex_init (int *) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regulator_disable (struct gpio_desc*) ;
 int regulator_enable (struct gpio_desc*) ;
 int stub1 (struct bmp280_data*) ;
 int usleep_range (int,int) ;

int bmp280_common_probe(struct device *dev,
   struct regmap *regmap,
   unsigned int chip,
   const char *name,
   int irq)
{
 int ret;
 struct iio_dev *indio_dev;
 struct bmp280_data *data;
 unsigned int chip_id;
 struct gpio_desc *gpiod;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 mutex_init(&data->lock);
 data->dev = dev;

 indio_dev->dev.parent = dev;
 indio_dev->name = name;
 indio_dev->channels = bmp280_channels;
 indio_dev->info = &bmp280_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 switch (chip) {
 case 129:
  indio_dev->num_channels = 2;
  data->chip_info = &bmp180_chip_info;
  data->oversampling_press = ilog2(8);
  data->oversampling_temp = ilog2(1);
  data->start_up_time = 10000;
  break;
 case 128:
  indio_dev->num_channels = 2;
  data->chip_info = &bmp280_chip_info;
  data->oversampling_press = ilog2(16);
  data->oversampling_temp = ilog2(2);
  data->start_up_time = 2000;
  break;
 case 130:
  indio_dev->num_channels = 3;
  data->chip_info = &bme280_chip_info;
  data->oversampling_press = ilog2(16);
  data->oversampling_humid = ilog2(16);
  data->oversampling_temp = ilog2(2);
  data->start_up_time = 2000;
  break;
 default:
  return -EINVAL;
 }


 data->vddd = devm_regulator_get(dev, "vddd");
 if (IS_ERR(data->vddd)) {
  dev_err(dev, "failed to get VDDD regulator\n");
  return PTR_ERR(data->vddd);
 }
 ret = regulator_enable(data->vddd);
 if (ret) {
  dev_err(dev, "failed to enable VDDD regulator\n");
  return ret;
 }
 data->vdda = devm_regulator_get(dev, "vdda");
 if (IS_ERR(data->vdda)) {
  dev_err(dev, "failed to get VDDA regulator\n");
  ret = PTR_ERR(data->vdda);
  goto out_disable_vddd;
 }
 ret = regulator_enable(data->vdda);
 if (ret) {
  dev_err(dev, "failed to enable VDDA regulator\n");
  goto out_disable_vddd;
 }

 usleep_range(data->start_up_time, data->start_up_time + 100);


 gpiod = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);

 if (!IS_ERR(gpiod)) {
  dev_info(dev, "release reset\n");
  gpiod_set_value(gpiod, 0);
 }

 data->regmap = regmap;
 ret = regmap_read(regmap, BMP280_REG_ID, &chip_id);
 if (ret < 0)
  goto out_disable_vdda;
 if (chip_id != chip) {
  dev_err(dev, "bad chip id: expected %x got %x\n",
   chip, chip_id);
  ret = -EINVAL;
  goto out_disable_vdda;
 }

 ret = data->chip_info->chip_config(data);
 if (ret < 0)
  goto out_disable_vdda;

 dev_set_drvdata(dev, indio_dev);






 if (chip_id == 129) {
  ret = bmp180_read_calib(data, &data->calib.bmp180);
  if (ret < 0) {
   dev_err(data->dev,
    "failed to read calibration coefficients\n");
   goto out_disable_vdda;
  }
 } else if (chip_id == 128 || chip_id == 130) {
  ret = bmp280_read_calib(data, &data->calib.bmp280, chip_id);
  if (ret < 0) {
   dev_err(data->dev,
    "failed to read calibration coefficients\n");
   goto out_disable_vdda;
  }
 }






 if (irq > 0 || (chip_id == 129)) {
  ret = bmp085_fetch_eoc_irq(dev, name, irq, data);
  if (ret)
   goto out_disable_vdda;
 }


 pm_runtime_get_noresume(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);




 pm_runtime_set_autosuspend_delay(dev, data->start_up_time / 10);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_put(dev);

 ret = iio_device_register(indio_dev);
 if (ret)
  goto out_runtime_pm_disable;


 return 0;

out_runtime_pm_disable:
 pm_runtime_get_sync(data->dev);
 pm_runtime_put_noidle(data->dev);
 pm_runtime_disable(data->dev);
out_disable_vdda:
 regulator_disable(data->vdda);
out_disable_vddd:
 regulator_disable(data->vddd);
 return ret;
}
