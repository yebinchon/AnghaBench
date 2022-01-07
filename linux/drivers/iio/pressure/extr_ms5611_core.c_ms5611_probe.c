
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ms5611_state {int * pressure_osr; int * temp_osr; int * chip_info; int lock; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int available_scan_masks; int modes; int * channels; int * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int INDIO_DIRECT_MODE ;
 int * chip_info_tbl ;
 int dev_err (struct device*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ms5611_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int * ms5611_avail_pressure_osr ;
 int * ms5611_avail_temp_osr ;
 int * ms5611_channels ;
 int ms5611_fini (struct iio_dev*) ;
 int ms5611_info ;
 int ms5611_init (struct iio_dev*) ;
 int ms5611_scan_masks ;
 int ms5611_trigger_handler ;
 int mutex_init (int *) ;

int ms5611_probe(struct iio_dev *indio_dev, struct device *dev,
   const char *name, int type)
{
 int ret;
 struct ms5611_state *st = iio_priv(indio_dev);

 mutex_init(&st->lock);
 st->chip_info = &chip_info_tbl[type];
 st->temp_osr =
  &ms5611_avail_temp_osr[ARRAY_SIZE(ms5611_avail_temp_osr) - 1];
 st->pressure_osr =
  &ms5611_avail_pressure_osr[ARRAY_SIZE(ms5611_avail_pressure_osr)
        - 1];
 indio_dev->dev.parent = dev;
 indio_dev->name = name;
 indio_dev->info = &ms5611_info;
 indio_dev->channels = ms5611_channels;
 indio_dev->num_channels = ARRAY_SIZE(ms5611_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->available_scan_masks = ms5611_scan_masks;

 ret = ms5611_init(indio_dev);
 if (ret < 0)
  return ret;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
      ms5611_trigger_handler, ((void*)0));
 if (ret < 0) {
  dev_err(dev, "iio triggered buffer setup failed\n");
  goto err_fini;
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(dev, "unable to register iio device\n");
  goto err_buffer_cleanup;
 }

 return 0;

err_buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);
err_fini:
 ms5611_fini(indio_dev);
 return ret;
}
