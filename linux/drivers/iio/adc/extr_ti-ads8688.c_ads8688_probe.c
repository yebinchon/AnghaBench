
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int of_node; } ;
struct spi_device {TYPE_3__ dev; int mode; } ;
struct TYPE_7__ {int of_node; TYPE_3__* parent; } ;
struct iio_dev {int * info; int num_channels; int channels; int modes; TYPE_1__ dev; int name; } ;
struct ads8688_state {int vref_mv; int reg; int lock; TYPE_6__* chip_info; struct spi_device* spi; } ;
struct TYPE_10__ {int num_channels; int channels; } ;
struct TYPE_8__ {size_t driver_data; int name; } ;


 int ADS8688_VREF_MV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IS_ERR (int ) ;
 int SPI_MODE_1 ;
 TYPE_6__* ads8688_chip_info_tbl ;
 int ads8688_info ;
 int ads8688_reset (struct iio_dev*) ;
 int ads8688_trigger_handler ;
 int dev_err (TYPE_3__*,char*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int devm_regulator_get_optional (TYPE_3__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ads8688_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ads8688_probe(struct spi_device *spi)
{
 struct ads8688_state *st;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);

 st->reg = devm_regulator_get_optional(&spi->dev, "vref");
 if (!IS_ERR(st->reg)) {
  ret = regulator_enable(st->reg);
  if (ret)
   return ret;

  ret = regulator_get_voltage(st->reg);
  if (ret < 0)
   goto err_regulator_disable;

  st->vref_mv = ret / 1000;
 } else {

  st->vref_mv = ADS8688_VREF_MV;
 }

 st->chip_info = &ads8688_chip_info_tbl[spi_get_device_id(spi)->driver_data];

 spi->mode = SPI_MODE_1;

 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;

 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = st->chip_info->channels;
 indio_dev->num_channels = st->chip_info->num_channels;
 indio_dev->info = &ads8688_info;

 ads8688_reset(indio_dev);

 mutex_init(&st->lock);

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0), ads8688_trigger_handler, ((void*)0));
 if (ret < 0) {
  dev_err(&spi->dev, "iio triggered buffer setup failed\n");
  goto err_regulator_disable;
 }

 ret = iio_device_register(indio_dev);
 if (ret)
  goto err_buffer_cleanup;

 return 0;

err_buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);

err_regulator_disable:
 if (!IS_ERR(st->reg))
  regulator_disable(st->reg);

 return ret;
}
