
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mma7455_data {struct regmap* regmap; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int available_scan_masks; int num_channels; int channels; int modes; TYPE_1__ dev; int * info; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int MMA7455_MCTL_MODE_MEASURE ;
 int MMA7455_REG_MCTL ;
 int MMA7455_REG_WHOAMI ;
 unsigned int MMA7455_WHOAMI_ID ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct mma7455_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int mma7455_channels ;
 int mma7455_info ;
 int mma7455_scan_masks ;
 int mma7455_trigger_handler ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,int ) ;

int mma7455_core_probe(struct device *dev, struct regmap *regmap,
         const char *name)
{
 struct mma7455_data *mma7455;
 struct iio_dev *indio_dev;
 unsigned int reg;
 int ret;

 ret = regmap_read(regmap, MMA7455_REG_WHOAMI, &reg);
 if (ret) {
  dev_err(dev, "unable to read reg\n");
  return ret;
 }

 if (reg != MMA7455_WHOAMI_ID) {
  dev_err(dev, "device id mismatch\n");
  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(dev, sizeof(*mma7455));
 if (!indio_dev)
  return -ENOMEM;

 dev_set_drvdata(dev, indio_dev);
 mma7455 = iio_priv(indio_dev);
 mma7455->regmap = regmap;

 indio_dev->info = &mma7455_info;
 indio_dev->name = name;
 indio_dev->dev.parent = dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = mma7455_channels;
 indio_dev->num_channels = ARRAY_SIZE(mma7455_channels);
 indio_dev->available_scan_masks = mma7455_scan_masks;

 regmap_write(mma7455->regmap, MMA7455_REG_MCTL,
       MMA7455_MCTL_MODE_MEASURE);

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
      mma7455_trigger_handler, ((void*)0));
 if (ret) {
  dev_err(dev, "unable to setup triggered buffer\n");
  return ret;
 }

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(dev, "unable to register device\n");
  iio_triggered_buffer_cleanup(indio_dev);
  return ret;
 }

 return 0;
}
