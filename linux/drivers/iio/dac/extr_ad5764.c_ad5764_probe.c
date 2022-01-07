
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_8__ {int * parent; } ;
struct iio_dev {int channels; int num_channels; int modes; int * info; int name; TYPE_1__ dev; } ;
struct ad5764_state {TYPE_3__* vref_reg; TYPE_6__* chip_info; struct spi_device* spi; } ;
typedef enum ad5764_type { ____Placeholder_ad5764_type } ad5764_type ;
struct TYPE_11__ {scalar_t__ int_vref; int channels; } ;
struct TYPE_10__ {char* supply; } ;
struct TYPE_9__ {int driver_data; int name; } ;


 int AD5764_NUM_CHANNELS ;
 int ARRAY_SIZE (TYPE_3__*) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 TYPE_6__* ad5764_chip_infos ;
 int ad5764_info ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_regulator_bulk_get (int *,int ,TYPE_3__*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad5764_state* iio_priv (struct iio_dev*) ;
 int regulator_bulk_disable (int ,TYPE_3__*) ;
 int regulator_bulk_enable (int ,TYPE_3__*) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad5764_probe(struct spi_device *spi)
{
 enum ad5764_type type = spi_get_device_id(spi)->driver_data;
 struct iio_dev *indio_dev;
 struct ad5764_state *st;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0)) {
  dev_err(&spi->dev, "Failed to allocate iio device\n");
  return -ENOMEM;
 }

 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;
 st->chip_info = &ad5764_chip_infos[type];

 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->info = &ad5764_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->num_channels = AD5764_NUM_CHANNELS;
 indio_dev->channels = st->chip_info->channels;

 if (st->chip_info->int_vref == 0) {
  st->vref_reg[0].supply = "vrefAB";
  st->vref_reg[1].supply = "vrefCD";

  ret = devm_regulator_bulk_get(&st->spi->dev,
   ARRAY_SIZE(st->vref_reg), st->vref_reg);
  if (ret) {
   dev_err(&spi->dev, "Failed to request vref regulators: %d\n",
    ret);
   return ret;
  }

  ret = regulator_bulk_enable(ARRAY_SIZE(st->vref_reg),
   st->vref_reg);
  if (ret) {
   dev_err(&spi->dev, "Failed to enable vref regulators: %d\n",
    ret);
   return ret;
  }
 }

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(&spi->dev, "Failed to register iio device: %d\n", ret);
  goto error_disable_reg;
 }

 return 0;

error_disable_reg:
 if (st->chip_info->int_vref == 0)
  regulator_bulk_disable(ARRAY_SIZE(st->vref_reg), st->vref_reg);
 return ret;
}
