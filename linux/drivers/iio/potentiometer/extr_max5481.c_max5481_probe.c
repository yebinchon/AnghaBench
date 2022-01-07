
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device_id {size_t driver_data; int name; } ;
struct spi_device {int dev; } ;
struct max5481_data {int * cfg; struct spi_device* spi; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; TYPE_1__ dev; int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int MAX5481_COPY_NV_TO_AB ;
 int dev_set_drvdata (int *,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct max5481_data* iio_priv (struct iio_dev*) ;
 int * max5481_cfg ;
 int max5481_channels ;
 int max5481_info ;
 int max5481_write_cmd (struct max5481_data*,int ,int ) ;
 int * of_device_get_match_data (int *) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int max5481_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct max5481_data *data;
 const struct spi_device_id *id = spi_get_device_id(spi);
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 dev_set_drvdata(&spi->dev, indio_dev);
 data = iio_priv(indio_dev);

 data->spi = spi;

 data->cfg = of_device_get_match_data(&spi->dev);
 if (!data->cfg)
  data->cfg = &max5481_cfg[id->driver_data];

 indio_dev->name = id->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;


 indio_dev->info = &max5481_info;
 indio_dev->channels = max5481_channels;
 indio_dev->num_channels = ARRAY_SIZE(max5481_channels);


 ret = max5481_write_cmd(data, MAX5481_COPY_NV_TO_AB, 0);
 if (ret < 0)
  return ret;

 return iio_device_register(indio_dev);
}
