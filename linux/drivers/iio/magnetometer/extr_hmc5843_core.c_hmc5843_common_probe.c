
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int available_scan_masks; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct hmc5843_data {TYPE_2__* variant; int orientation; int lock; struct regmap* regmap; struct device* dev; } ;
struct device {int dummy; } ;
typedef enum hmc5843_ids { ____Placeholder_hmc5843_ids } hmc5843_ids ;
struct TYPE_4__ {int channels; } ;


 int ENOMEM ;
 int HMC5843_MODE_SLEEP ;
 int INDIO_DIRECT_MODE ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 TYPE_2__* hmc5843_chip_info_tbl ;
 int hmc5843_info ;
 int hmc5843_init (struct hmc5843_data*) ;
 int hmc5843_scan_masks ;
 int hmc5843_set_mode (struct hmc5843_data*,int ) ;
 int hmc5843_trigger_handler ;
 int iio_device_register (struct iio_dev*) ;
 struct hmc5843_data* iio_priv (struct iio_dev*) ;
 int iio_read_mount_matrix (struct device*,char*,int *) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int mutex_init (int *) ;

int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
    enum hmc5843_ids id, const char *name)
{
 struct hmc5843_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 dev_set_drvdata(dev, indio_dev);


 data = iio_priv(indio_dev);
 data->dev = dev;
 data->regmap = regmap;
 data->variant = &hmc5843_chip_info_tbl[id];
 mutex_init(&data->lock);

 ret = iio_read_mount_matrix(dev, "mount-matrix",
    &data->orientation);
 if (ret)
  return ret;

 indio_dev->dev.parent = dev;
 indio_dev->name = name;
 indio_dev->info = &hmc5843_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = data->variant->channels;
 indio_dev->num_channels = 4;
 indio_dev->available_scan_masks = hmc5843_scan_masks;

 ret = hmc5843_init(data);
 if (ret < 0)
  return ret;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
      hmc5843_trigger_handler, ((void*)0));
 if (ret < 0)
  goto buffer_setup_err;

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto buffer_cleanup;

 return 0;

buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);
buffer_setup_err:
 hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
 return ret;
}
