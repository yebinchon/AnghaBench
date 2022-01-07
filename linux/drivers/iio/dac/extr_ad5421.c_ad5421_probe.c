
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dev; scalar_t__ irq; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct ad5421_state {int ctrl; int current_range; struct spi_device* spi; } ;
struct ad5421_platform_data {scalar_t__ external_vref; int current_range; } ;


 int AD5421_CTRL_AUTO_FAULT_READBACK ;
 int AD5421_CTRL_PWR_DOWN_INT_VREF ;
 int AD5421_CTRL_WATCHDOG_DISABLE ;
 int AD5421_CURRENT_RANGE_4mA_20mA ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int ad5421_channels ;
 int ad5421_fault_handler ;
 int ad5421_info ;
 int ad5421_update_ctrl (struct iio_dev*,int ,int ) ;
 int dev_err (int *,char*) ;
 struct ad5421_platform_data* dev_get_platdata (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct iio_dev*) ;
 struct ad5421_state* iio_priv (struct iio_dev*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad5421_probe(struct spi_device *spi)
{
 struct ad5421_platform_data *pdata = dev_get_platdata(&spi->dev);
 struct iio_dev *indio_dev;
 struct ad5421_state *st;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0)) {
  dev_err(&spi->dev, "Failed to allocate iio device\n");
  return -ENOMEM;
 }

 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;

 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = "ad5421";
 indio_dev->info = &ad5421_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ad5421_channels;
 indio_dev->num_channels = ARRAY_SIZE(ad5421_channels);

 st->ctrl = AD5421_CTRL_WATCHDOG_DISABLE |
   AD5421_CTRL_AUTO_FAULT_READBACK;

 if (pdata) {
  st->current_range = pdata->current_range;
  if (pdata->external_vref)
   st->ctrl |= AD5421_CTRL_PWR_DOWN_INT_VREF;
 } else {
  st->current_range = AD5421_CURRENT_RANGE_4mA_20mA;
 }


 ad5421_update_ctrl(indio_dev, 0, 0);

 if (spi->irq) {
  ret = devm_request_threaded_irq(&spi->dev, spi->irq,
        ((void*)0),
        ad5421_fault_handler,
        IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
        "ad5421 fault",
        indio_dev);
  if (ret)
   return ret;
 }

 return devm_iio_device_register(&spi->dev, indio_dev);
}
