
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device_id {scalar_t__ driver_data; int name; } ;
struct spi_device {int dev; } ;
struct max1118 {int reg; int lock; struct spi_device* spi; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_regulator_get (int *,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct max1118* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 scalar_t__ max1118 ;
 int max1118_channels ;
 int max1118_info ;
 int max1118_read (struct spi_device*,int ) ;
 int max1118_trigger_handler ;
 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int max1118_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct max1118 *adc;
 const struct spi_device_id *id = spi_get_device_id(spi);
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adc));
 if (!indio_dev)
  return -ENOMEM;

 adc = iio_priv(indio_dev);
 adc->spi = spi;
 mutex_init(&adc->lock);

 if (id->driver_data == max1118) {
  adc->reg = devm_regulator_get(&spi->dev, "vref");
  if (IS_ERR(adc->reg)) {
   dev_err(&spi->dev, "failed to get vref regulator\n");
   return PTR_ERR(adc->reg);
  }
  ret = regulator_enable(adc->reg);
  if (ret)
   return ret;
 }

 spi_set_drvdata(spi, indio_dev);

 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &max1118_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = max1118_channels;
 indio_dev->num_channels = ARRAY_SIZE(max1118_channels);







 max1118_read(spi, 0);

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
     max1118_trigger_handler, ((void*)0));
 if (ret)
  goto err_reg_disable;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto err_buffer_cleanup;

 return 0;

err_buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);
err_reg_disable:
 if (id->driver_data == max1118)
  regulator_disable(adc->reg);

 return ret;
}
