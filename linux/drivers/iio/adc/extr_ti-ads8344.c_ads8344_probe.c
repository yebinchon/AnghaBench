
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int of_node; TYPE_2__* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;
struct ads8344 {int reg; int lock; struct spi_device* spi; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ads8344_channels ;
 int ads8344_info ;
 int dev_name (TYPE_2__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_regulator_get (TYPE_2__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ads8344* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ads8344_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct ads8344 *adc;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adc));
 if (!indio_dev)
  return -ENOMEM;

 adc = iio_priv(indio_dev);
 adc->spi = spi;
 mutex_init(&adc->lock);

 indio_dev->name = dev_name(&spi->dev);
 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->info = &ads8344_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ads8344_channels;
 indio_dev->num_channels = ARRAY_SIZE(ads8344_channels);

 adc->reg = devm_regulator_get(&spi->dev, "vref");
 if (IS_ERR(adc->reg))
  return PTR_ERR(adc->reg);

 ret = regulator_enable(adc->reg);
 if (ret)
  return ret;

 spi_set_drvdata(spi, indio_dev);

 ret = iio_device_register(indio_dev);
 if (ret) {
  regulator_disable(adc->reg);
  return ret;
 }

 return 0;
}
