
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_8__ {int of_node; TYPE_3__* parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct adc128 {int lock; int reg; struct spi_device* spi; } ;
struct TYPE_11__ {int num_channels; int channels; } ;
struct TYPE_9__ {unsigned int driver_data; int name; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_7__* adc128_config ;
 int adc128_info ;
 scalar_t__ dev_fwnode (TYPE_3__*) ;
 scalar_t__ device_get_match_data (TYPE_3__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int devm_regulator_get (TYPE_3__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct adc128* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int regulator_enable (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adc128_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 unsigned int config;
 struct adc128 *adc;
 int ret;

 if (dev_fwnode(&spi->dev))
  config = (unsigned long) device_get_match_data(&spi->dev);
 else
  config = spi_get_device_id(spi)->driver_data;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adc));
 if (!indio_dev)
  return -ENOMEM;

 adc = iio_priv(indio_dev);
 adc->spi = spi;

 spi_set_drvdata(spi, indio_dev);

 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &adc128_info;

 indio_dev->channels = adc128_config[config].channels;
 indio_dev->num_channels = adc128_config[config].num_channels;

 adc->reg = devm_regulator_get(&spi->dev, "vref");
 if (IS_ERR(adc->reg))
  return PTR_ERR(adc->reg);

 ret = regulator_enable(adc->reg);
 if (ret < 0)
  return ret;

 mutex_init(&adc->lock);

 ret = iio_device_register(indio_dev);

 return ret;
}
