
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms5611_state {int client; struct ms5611_osr* pressure_osr; struct ms5611_osr* temp_osr; } ;
struct ms5611_osr {unsigned long conv_usec; int cmd; } ;
struct device {int dummy; } ;
typedef int s32 ;


 int dev_to_iio_dev (struct device*) ;
 struct ms5611_state* iio_priv (int ) ;
 int ms5611_spi_read_adc (struct device*,int *) ;
 int spi_write_then_read (int ,int *,int,int *,int ) ;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static int ms5611_spi_read_adc_temp_and_pressure(struct device *dev,
       s32 *temp, s32 *pressure)
{
 int ret;
 struct ms5611_state *st = iio_priv(dev_to_iio_dev(dev));
 const struct ms5611_osr *osr = st->temp_osr;





 ret = spi_write_then_read(st->client, &osr->cmd, 1, ((void*)0), 0);
 if (ret < 0)
  return ret;

 usleep_range(osr->conv_usec, osr->conv_usec + (osr->conv_usec / 10UL));
 ret = ms5611_spi_read_adc(dev, temp);
 if (ret < 0)
  return ret;

 osr = st->pressure_osr;
 ret = spi_write_then_read(st->client, &osr->cmd, 1, ((void*)0), 0);
 if (ret < 0)
  return ret;

 usleep_range(osr->conv_usec, osr->conv_usec + (osr->conv_usec / 10UL));
 return ms5611_spi_read_adc(dev, pressure);
}
