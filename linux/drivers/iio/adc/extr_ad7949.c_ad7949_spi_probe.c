
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int of_node; } ;
struct spi_device {struct device dev; } ;
struct TYPE_3__ {int of_node; struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct ad7949_adc_spec {int resolution; int num_channels; } ;
struct ad7949_adc_chip {int vref; int lock; int resolution; struct spi_device* spi; struct iio_dev* indio_dev; } ;
struct TYPE_4__ {size_t driver_data; int name; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ad7949_adc_channels ;
 struct ad7949_adc_spec* ad7949_adc_spec ;
 int ad7949_spi_info ;
 int ad7949_spi_init (struct ad7949_adc_chip*) ;
 int dev_err (struct device*,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_regulator_get (struct device*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad7949_adc_chip* iio_priv (struct iio_dev*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad7949_spi_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 const struct ad7949_adc_spec *spec;
 struct ad7949_adc_chip *ad7949_adc;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*ad7949_adc));
 if (!indio_dev) {
  dev_err(dev, "can not allocate iio device\n");
  return -ENOMEM;
 }

 indio_dev->dev.parent = dev;
 indio_dev->dev.of_node = dev->of_node;
 indio_dev->info = &ad7949_spi_info;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ad7949_adc_channels;
 spi_set_drvdata(spi, indio_dev);

 ad7949_adc = iio_priv(indio_dev);
 ad7949_adc->indio_dev = indio_dev;
 ad7949_adc->spi = spi;

 spec = &ad7949_adc_spec[spi_get_device_id(spi)->driver_data];
 indio_dev->num_channels = spec->num_channels;
 ad7949_adc->resolution = spec->resolution;

 ad7949_adc->vref = devm_regulator_get(dev, "vref");
 if (IS_ERR(ad7949_adc->vref)) {
  dev_err(dev, "fail to request regulator\n");
  return PTR_ERR(ad7949_adc->vref);
 }

 ret = regulator_enable(ad7949_adc->vref);
 if (ret < 0) {
  dev_err(dev, "fail to enable regulator\n");
  return ret;
 }

 mutex_init(&ad7949_adc->lock);

 ret = ad7949_spi_init(ad7949_adc);
 if (ret) {
  dev_err(dev, "enable to init this device: %d\n", ret);
  goto err;
 }

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(dev, "fail to register iio device: %d\n", ret);
  goto err;
 }

 return 0;

err:
 mutex_destroy(&ad7949_adc->lock);
 regulator_disable(ad7949_adc->vref);

 return ret;
}
