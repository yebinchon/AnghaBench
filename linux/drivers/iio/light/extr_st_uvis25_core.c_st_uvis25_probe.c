
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_uvis25_hw {int irq; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int * info; int name; int num_channels; int channels; TYPE_1__ dev; int modes; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int ST_UVIS25_DEV_NAME ;
 int dev_set_drvdata (struct device*,void*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 struct st_uvis25_hw* iio_priv (struct iio_dev*) ;
 int st_uvis25_allocate_buffer (struct iio_dev*) ;
 int st_uvis25_allocate_trigger (struct iio_dev*) ;
 int st_uvis25_channels ;
 int st_uvis25_check_whoami (struct st_uvis25_hw*) ;
 int st_uvis25_info ;
 int st_uvis25_init_sensor (struct st_uvis25_hw*) ;

int st_uvis25_probe(struct device *dev, int irq, struct regmap *regmap)
{
 struct st_uvis25_hw *hw;
 struct iio_dev *iio_dev;
 int err;

 iio_dev = devm_iio_device_alloc(dev, sizeof(*hw));
 if (!iio_dev)
  return -ENOMEM;

 dev_set_drvdata(dev, (void *)iio_dev);

 hw = iio_priv(iio_dev);
 hw->irq = irq;
 hw->regmap = regmap;

 err = st_uvis25_check_whoami(hw);
 if (err < 0)
  return err;

 iio_dev->modes = INDIO_DIRECT_MODE;
 iio_dev->dev.parent = dev;
 iio_dev->channels = st_uvis25_channels;
 iio_dev->num_channels = ARRAY_SIZE(st_uvis25_channels);
 iio_dev->name = ST_UVIS25_DEV_NAME;
 iio_dev->info = &st_uvis25_info;

 err = st_uvis25_init_sensor(hw);
 if (err < 0)
  return err;

 if (hw->irq > 0) {
  err = st_uvis25_allocate_buffer(iio_dev);
  if (err < 0)
   return err;

  err = st_uvis25_allocate_trigger(iio_dev);
  if (err)
   return err;
 }

 return devm_iio_device_register(dev, iio_dev);
}
