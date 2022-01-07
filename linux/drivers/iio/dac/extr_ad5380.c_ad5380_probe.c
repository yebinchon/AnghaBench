
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char const* name; int channels; int num_channels; int modes; int * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ad5380_state {int vref; int vref_reg; struct regmap* regmap; TYPE_2__* chip_info; } ;
typedef enum ad5380_type { ____Placeholder_ad5380_type } ad5380_type ;
struct TYPE_4__ {int int_vref; int num_channels; } ;


 unsigned int AD5380_CTRL_INT_VREF_2V5 ;
 unsigned int AD5380_CTRL_INT_VREF_EN ;
 int AD5380_REG_SF_CTRL ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IS_ERR (int ) ;
 int ad5380_alloc_channels (struct iio_dev*) ;
 TYPE_2__* ad5380_chip_info_tbl ;
 int ad5380_info ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_regulator_get (struct device*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad5380_state* iio_priv (struct iio_dev*) ;
 int kfree (int ) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad5380_probe(struct device *dev, struct regmap *regmap,
   enum ad5380_type type, const char *name)
{
 struct iio_dev *indio_dev;
 struct ad5380_state *st;
 unsigned int ctrl = 0;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
 if (indio_dev == ((void*)0)) {
  dev_err(dev, "Failed to allocate iio device\n");
  return -ENOMEM;
 }

 st = iio_priv(indio_dev);
 dev_set_drvdata(dev, indio_dev);

 st->chip_info = &ad5380_chip_info_tbl[type];
 st->regmap = regmap;

 indio_dev->dev.parent = dev;
 indio_dev->name = name;
 indio_dev->info = &ad5380_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->num_channels = st->chip_info->num_channels;

 ret = ad5380_alloc_channels(indio_dev);
 if (ret) {
  dev_err(dev, "Failed to allocate channel spec: %d\n", ret);
  return ret;
 }

 if (st->chip_info->int_vref == 2500)
  ctrl |= AD5380_CTRL_INT_VREF_2V5;

 st->vref_reg = devm_regulator_get(dev, "vref");
 if (!IS_ERR(st->vref_reg)) {
  ret = regulator_enable(st->vref_reg);
  if (ret) {
   dev_err(dev, "Failed to enable vref regulators: %d\n",
    ret);
   goto error_free_reg;
  }

  ret = regulator_get_voltage(st->vref_reg);
  if (ret < 0)
   goto error_disable_reg;

  st->vref = ret / 1000;
 } else {
  st->vref = st->chip_info->int_vref;
  ctrl |= AD5380_CTRL_INT_VREF_EN;
 }

 ret = regmap_write(st->regmap, AD5380_REG_SF_CTRL, ctrl);
 if (ret) {
  dev_err(dev, "Failed to write to device: %d\n", ret);
  goto error_disable_reg;
 }

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(dev, "Failed to register iio device: %d\n", ret);
  goto error_disable_reg;
 }

 return 0;

error_disable_reg:
 if (!IS_ERR(st->vref_reg))
  regulator_disable(st->vref_reg);
error_free_reg:
 kfree(indio_dev->channels);

 return ret;
}
