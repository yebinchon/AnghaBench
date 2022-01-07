
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int available_scan_masks; int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct bma220_data {struct spi_device* spi_device; int lock; } ;


 int ARRAY_SIZE (int ) ;
 int BMA220_DEVICE_NAME ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int bma220_accel_scan_masks ;
 int bma220_channels ;
 int bma220_deinit (struct spi_device*) ;
 int bma220_info ;
 int bma220_init (struct spi_device*) ;
 int bma220_trigger_handler ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct bma220_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int ,int ,int *) ;
 int mutex_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int bma220_probe(struct spi_device *spi)
{
 int ret;
 struct iio_dev *indio_dev;
 struct bma220_data *data;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*data));
 if (!indio_dev) {
  dev_err(&spi->dev, "iio allocation failed!\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 data->spi_device = spi;
 spi_set_drvdata(spi, indio_dev);
 mutex_init(&data->lock);

 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &bma220_info;
 indio_dev->name = BMA220_DEVICE_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = bma220_channels;
 indio_dev->num_channels = ARRAY_SIZE(bma220_channels);
 indio_dev->available_scan_masks = bma220_accel_scan_masks;

 ret = bma220_init(data->spi_device);
 if (ret < 0)
  return ret;

 ret = iio_triggered_buffer_setup(indio_dev, iio_pollfunc_store_time,
      bma220_trigger_handler, ((void*)0));
 if (ret < 0) {
  dev_err(&spi->dev, "iio triggered buffer setup failed\n");
  goto err_suspend;
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&spi->dev, "iio_device_register failed\n");
  iio_triggered_buffer_cleanup(indio_dev);
  goto err_suspend;
 }

 return 0;

err_suspend:
 return bma220_deinit(spi);
}
