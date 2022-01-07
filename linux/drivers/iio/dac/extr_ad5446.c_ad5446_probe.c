
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int * channels; int modes; int * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ad5446_state {int vref_mv; struct ad5446_chip_info const* chip_info; int pwr_down_mode; struct device* dev; struct regulator* reg; } ;
struct ad5446_chip_info {int int_vref_mv; int channel; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IS_ERR (struct regulator*) ;
 int MODE_PWRDWN_1k ;
 int ad5446_info ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 int dev_warn (struct device*,char*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 struct regulator* devm_regulator_get (struct device*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad5446_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (struct regulator*) ;
 int regulator_enable (struct regulator*) ;
 int regulator_get_voltage (struct regulator*) ;

__attribute__((used)) static int ad5446_probe(struct device *dev, const char *name,
   const struct ad5446_chip_info *chip_info)
{
 struct ad5446_state *st;
 struct iio_dev *indio_dev;
 struct regulator *reg;
 int ret, voltage_uv = 0;

 reg = devm_regulator_get(dev, "vcc");
 if (!IS_ERR(reg)) {
  ret = regulator_enable(reg);
  if (ret)
   return ret;

  ret = regulator_get_voltage(reg);
  if (ret < 0)
   goto error_disable_reg;

  voltage_uv = ret;
 }

 indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
 if (indio_dev == ((void*)0)) {
  ret = -ENOMEM;
  goto error_disable_reg;
 }
 st = iio_priv(indio_dev);
 st->chip_info = chip_info;

 dev_set_drvdata(dev, indio_dev);
 st->reg = reg;
 st->dev = dev;


 indio_dev->dev.parent = dev;
 indio_dev->name = name;
 indio_dev->info = &ad5446_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = &st->chip_info->channel;
 indio_dev->num_channels = 1;

 st->pwr_down_mode = MODE_PWRDWN_1k;

 if (st->chip_info->int_vref_mv)
  st->vref_mv = st->chip_info->int_vref_mv;
 else if (voltage_uv)
  st->vref_mv = voltage_uv / 1000;
 else
  dev_warn(dev, "reference voltage unspecified\n");

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_disable_reg;

 return 0;

error_disable_reg:
 if (!IS_ERR(reg))
  regulator_disable(reg);
 return ret;
}
