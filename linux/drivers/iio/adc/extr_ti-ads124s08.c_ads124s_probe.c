
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct spi_device_id {size_t driver_data; int name; } ;
struct TYPE_10__ {int of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_9__ {int of_node; TYPE_2__* parent; } ;
struct iio_dev {int * info; int num_channels; int channels; int modes; TYPE_1__ dev; int name; } ;
struct ads124s_private {int lock; TYPE_8__* chip_info; struct spi_device* spi; int reset_gpio; } ;
struct TYPE_11__ {int num_channels; int channels; } ;


 int ENOMEM ;
 int GPIOD_OUT_LOW ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 TYPE_8__* ads124s_chip_info_tbl ;
 int ads124s_info ;
 int ads124s_reset (struct iio_dev*) ;
 int ads124s_trigger_handler ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*) ;
 int devm_gpiod_get_optional (TYPE_2__*,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_iio_device_register (TYPE_2__*,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (TYPE_2__*,struct iio_dev*,int *,int ,int *) ;
 struct ads124s_private* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ads124s_probe(struct spi_device *spi)
{
 struct ads124s_private *ads124s_priv;
 struct iio_dev *indio_dev;
 const struct spi_device_id *spi_id = spi_get_device_id(spi);
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*ads124s_priv));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 ads124s_priv = iio_priv(indio_dev);

 ads124s_priv->reset_gpio = devm_gpiod_get_optional(&spi->dev,
         "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ads124s_priv->reset_gpio))
  dev_info(&spi->dev, "Reset GPIO not defined\n");

 ads124s_priv->chip_info = &ads124s_chip_info_tbl[spi_id->driver_data];

 spi_set_drvdata(spi, indio_dev);

 ads124s_priv->spi = spi;

 indio_dev->name = spi_id->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ads124s_priv->chip_info->channels;
 indio_dev->num_channels = ads124s_priv->chip_info->num_channels;
 indio_dev->info = &ads124s_info;

 mutex_init(&ads124s_priv->lock);

 ret = devm_iio_triggered_buffer_setup(&spi->dev, indio_dev, ((void*)0),
           ads124s_trigger_handler, ((void*)0));
 if (ret) {
  dev_err(&spi->dev, "iio triggered buffer setup failed\n");
  return ret;
 }

 ads124s_reset(indio_dev);

 return devm_iio_device_register(&spi->dev, indio_dev);
}
