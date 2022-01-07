
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_dac_spec {int resolution; } ;
struct ti_dac_chip {int powerdown; int vref; int lock; int resolution; struct spi_device* spi; } ;
struct device {int of_node; } ;
struct spi_device {int bits_per_word; struct device dev; int mode; } ;
struct TYPE_3__ {int of_node; struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct TYPE_4__ {size_t driver_data; int name; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_MODE_1 ;
 int dev_err (struct device*,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_regulator_get (struct device*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;
 int spi_setup (struct spi_device*) ;
 int ti_dac_channels ;
 int ti_dac_info ;
 struct ti_dac_spec* ti_dac_spec ;

__attribute__((used)) static int ti_dac_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 const struct ti_dac_spec *spec;
 struct ti_dac_chip *ti_dac;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*ti_dac));
 if (!indio_dev) {
  dev_err(dev, "can not allocate iio device\n");
  return -ENOMEM;
 }

 spi->mode = SPI_MODE_1;
 spi->bits_per_word = 16;
 spi_setup(spi);

 indio_dev->dev.parent = dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->info = &ti_dac_info;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ti_dac_channels;
 spi_set_drvdata(spi, indio_dev);

 ti_dac = iio_priv(indio_dev);
 ti_dac->powerdown = 0;
 ti_dac->spi = spi;

 spec = &ti_dac_spec[spi_get_device_id(spi)->driver_data];
 indio_dev->num_channels = 1;
 ti_dac->resolution = spec->resolution;

 ti_dac->vref = devm_regulator_get(dev, "vref");
 if (IS_ERR(ti_dac->vref)) {
  dev_err(dev, "error to get regulator\n");
  return PTR_ERR(ti_dac->vref);
 }

 ret = regulator_enable(ti_dac->vref);
 if (ret < 0) {
  dev_err(dev, "can not enable regulator\n");
  return ret;
 }

 mutex_init(&ti_dac->lock);

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(dev, "fail to register iio device: %d\n", ret);
  goto err;
 }

 return 0;

err:
 mutex_destroy(&ti_dac->lock);
 regulator_disable(ti_dac->vref);
 return ret;
}
