
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int num_channels; int name; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct dac7612 {int cache; struct spi_device* spi; int loaddacs; } ;
struct TYPE_4__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GPIOD_OUT_LOW ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dac7612_channels ;
 int dac7612_cmd_single (struct dac7612*,int,int ) ;
 int dac7612_info ;
 int devm_gpiod_get_optional (int *,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct dac7612* iio_priv (struct iio_dev*) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int dac7612_probe(struct spi_device *spi)
{
 struct iio_dev *iio_dev;
 struct dac7612 *priv;
 int i;
 int ret;

 iio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*priv));
 if (!iio_dev)
  return -ENOMEM;

 priv = iio_priv(iio_dev);
 priv->loaddacs = devm_gpiod_get_optional(&spi->dev, "ti,loaddacs",
       GPIOD_OUT_LOW);
 if (IS_ERR(priv->loaddacs))
  return PTR_ERR(priv->loaddacs);
 priv->spi = spi;
 spi_set_drvdata(spi, iio_dev);
 iio_dev->dev.parent = &spi->dev;
 iio_dev->info = &dac7612_info;
 iio_dev->modes = INDIO_DIRECT_MODE;
 iio_dev->channels = dac7612_channels;
 iio_dev->num_channels = ARRAY_SIZE(priv->cache);
 iio_dev->name = spi_get_device_id(spi)->name;

 for (i = 0; i < ARRAY_SIZE(priv->cache); i++) {
  ret = dac7612_cmd_single(priv, i, 0);
  if (ret)
   return ret;
 }

 return devm_iio_device_register(&spi->dev, iio_dev);
}
