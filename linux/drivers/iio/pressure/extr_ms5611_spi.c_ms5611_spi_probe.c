
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int max_speed_hz; int bits_per_word; int dev; int mode; } ;
struct ms5611_state {struct spi_device* client; int read_adc_temp_and_pressure; int read_prom_word; int reset; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int driver_data; int name; } ;


 int ENOMEM ;
 int SPI_MODE_0 ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 struct ms5611_state* iio_priv (struct iio_dev*) ;
 int ms5611_probe (struct iio_dev*,int *,int ,int ) ;
 int ms5611_spi_read_adc_temp_and_pressure ;
 int ms5611_spi_read_prom_word ;
 int ms5611_spi_reset ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ms5611_spi_probe(struct spi_device *spi)
{
 int ret;
 struct ms5611_state *st;
 struct iio_dev *indio_dev;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 spi_set_drvdata(spi, indio_dev);

 spi->mode = SPI_MODE_0;
 spi->max_speed_hz = 20000000;
 spi->bits_per_word = 8;
 ret = spi_setup(spi);
 if (ret < 0)
  return ret;

 st = iio_priv(indio_dev);
 st->reset = ms5611_spi_reset;
 st->read_prom_word = ms5611_spi_read_prom_word;
 st->read_adc_temp_and_pressure = ms5611_spi_read_adc_temp_and_pressure;
 st->client = spi;

 return ms5611_probe(indio_dev, &spi->dev, spi_get_device_id(spi)->name,
       spi_get_device_id(spi)->driver_data);
}
