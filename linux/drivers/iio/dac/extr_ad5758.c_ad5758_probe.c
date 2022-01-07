
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; int name; TYPE_1__ dev; } ;
struct ad5758_state {scalar_t__ dc_dc_mode; struct spi_device* spi; int lock; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ AD5758_DCDC_MODE_DPC_VOLTAGE ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int ad5758_current_ch ;
 int ad5758_info ;
 int ad5758_init (struct ad5758_state*) ;
 int ad5758_parse_dt (struct ad5758_state*) ;
 int ad5758_voltage_ch ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct ad5758_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad5758_probe(struct spi_device *spi)
{
 struct ad5758_state *st;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;

 mutex_init(&st->lock);

 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->info = &ad5758_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->num_channels = 1;

 ret = ad5758_parse_dt(st);
 if (ret < 0)
  return ret;

 if (st->dc_dc_mode == AD5758_DCDC_MODE_DPC_VOLTAGE)
  indio_dev->channels = ad5758_voltage_ch;
 else
  indio_dev->channels = ad5758_current_ch;

 ret = ad5758_init(st);
 if (ret < 0) {
  dev_err(&spi->dev, "AD5758 init failed\n");
  return ret;
 }

 return devm_iio_device_register(&st->spi->dev, indio_dev);
}
