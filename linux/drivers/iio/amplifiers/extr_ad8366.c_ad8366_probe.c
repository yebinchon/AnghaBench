
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int modes; int * info; int name; TYPE_1__ dev; void* num_channels; void* channels; } ;
struct ad8366_state {int type; int reg; int * info; int reset_gpio; struct spi_device* spi; int lock; } ;
struct TYPE_4__ {int driver_data; int name; } ;


 void* ARRAY_SIZE (void*) ;
 int EINVAL ;
 int ENOMEM ;
 int GPIOD_OUT_HIGH ;



 int INDIO_DIRECT_MODE ;
 int IS_ERR (int ) ;
 void* ad8366_channels ;
 int ad8366_info ;
 int * ad8366_infos ;
 int ad8366_write (struct iio_dev*,int ,int ) ;
 void* ada4961_channels ;
 int dev_err (int *,char*) ;
 int devm_gpiod_get (int *,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_regulator_get (int *,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad8366_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad8366_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct ad8366_state *st;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);

 st->reg = devm_regulator_get(&spi->dev, "vcc");
 if (!IS_ERR(st->reg)) {
  ret = regulator_enable(st->reg);
  if (ret)
   return ret;
 }

 spi_set_drvdata(spi, indio_dev);
 mutex_init(&st->lock);
 st->spi = spi;
 st->type = spi_get_device_id(spi)->driver_data;

 switch (st->type) {
 case 130:
  indio_dev->channels = ad8366_channels;
  indio_dev->num_channels = ARRAY_SIZE(ad8366_channels);
  break;
 case 129:
 case 128:
  st->reset_gpio = devm_gpiod_get(&spi->dev, "reset",
   GPIOD_OUT_HIGH);
  indio_dev->channels = ada4961_channels;
  indio_dev->num_channels = ARRAY_SIZE(ada4961_channels);
  break;
 default:
  dev_err(&spi->dev, "Invalid device ID\n");
  ret = -EINVAL;
  goto error_disable_reg;
 }

 st->info = &ad8366_infos[st->type];
 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->info = &ad8366_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = ad8366_write(indio_dev, 0 , 0);
 if (ret < 0)
  goto error_disable_reg;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_disable_reg;

 return 0;

error_disable_reg:
 if (!IS_ERR(st->reg))
  regulator_disable(st->reg);

 return ret;
}
