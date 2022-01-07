
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface3_ts_data {struct spi_device* spi; } ;
struct spi_device {int bits_per_word; int irq; int dev; int mode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int SPI_MODE_0 ;
 struct surface3_ts_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,char*,struct surface3_ts_data*) ;
 int spi_set_drvdata (struct spi_device*,struct surface3_ts_data*) ;
 int spi_setup (struct spi_device*) ;
 int surface3_spi_create_pen_input (struct surface3_ts_data*) ;
 int surface3_spi_create_touch_input (struct surface3_ts_data*) ;
 int surface3_spi_get_gpio_config (struct surface3_ts_data*) ;
 int surface3_spi_irq_handler ;
 int surface3_spi_power (struct surface3_ts_data*,int) ;

__attribute__((used)) static int surface3_spi_probe(struct spi_device *spi)
{
 struct surface3_ts_data *data;
 int error;


 spi->bits_per_word = 8;
 spi->mode = SPI_MODE_0;
 error = spi_setup(spi);
 if (error)
  return error;

 data = devm_kzalloc(&spi->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->spi = spi;
 spi_set_drvdata(spi, data);

 error = surface3_spi_get_gpio_config(data);
 if (error)
  return error;

 surface3_spi_power(data, 1);
 surface3_spi_power(data, 0);
 surface3_spi_power(data, 1);

 error = surface3_spi_create_touch_input(data);
 if (error)
  return error;

 error = surface3_spi_create_pen_input(data);
 if (error)
  return error;

 error = devm_request_threaded_irq(&spi->dev, spi->irq,
       ((void*)0), surface3_spi_irq_handler,
       IRQF_ONESHOT,
       "Surface3-irq", data);
 if (error)
  return error;

 return 0;
}
