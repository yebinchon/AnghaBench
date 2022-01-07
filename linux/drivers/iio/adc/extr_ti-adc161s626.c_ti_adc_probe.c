
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ti_adc_data {int shift; int read_size; int ref; struct spi_device* spi; } ;
struct TYPE_7__ {int of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_5__ {int of_node; TYPE_3__* parent; } ;
struct iio_dev {void* num_channels; void* channels; int modes; int name; TYPE_1__ dev; int * info; } ;
struct TYPE_6__ {int driver_data; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IS_ERR (int ) ;


 int TI_ADC_DRV_NAME ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int devm_regulator_get (TYPE_3__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ti_adc_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;
 void* ti_adc141s626_channels ;
 void* ti_adc161s626_channels ;
 int ti_adc_info ;
 int ti_adc_trigger_handler ;

__attribute__((used)) static int ti_adc_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct ti_adc_data *data;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 indio_dev->info = &ti_adc_info;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->name = TI_ADC_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 spi_set_drvdata(spi, indio_dev);

 data = iio_priv(indio_dev);
 data->spi = spi;

 switch (spi_get_device_id(spi)->driver_data) {
 case 129:
  indio_dev->channels = ti_adc141s626_channels;
  indio_dev->num_channels = ARRAY_SIZE(ti_adc141s626_channels);
  data->shift = 0;
  data->read_size = 2;
  break;
 case 128:
  indio_dev->channels = ti_adc161s626_channels;
  indio_dev->num_channels = ARRAY_SIZE(ti_adc161s626_channels);
  data->shift = 6;
  data->read_size = 3;
  break;
 }

 data->ref = devm_regulator_get(&spi->dev, "vdda");
 if (!IS_ERR(data->ref)) {
  ret = regulator_enable(data->ref);
  if (ret < 0)
   return ret;
 }

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
      ti_adc_trigger_handler, ((void*)0));
 if (ret)
  goto error_regulator_disable;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_unreg_buffer;

 return 0;

error_unreg_buffer:
 iio_triggered_buffer_cleanup(indio_dev);

error_regulator_disable:
 regulator_disable(data->ref);

 return ret;
}
