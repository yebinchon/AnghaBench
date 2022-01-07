
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ms5611_state {int client; } ;
struct device {int dummy; } ;
typedef int s32 ;


 int MS5611_READ_ADC ;
 int dev_to_iio_dev (struct device*) ;
 struct ms5611_state* iio_priv (int ) ;
 int spi_write_then_read (int ,int*,int,int*,int) ;

__attribute__((used)) static int ms5611_spi_read_adc(struct device *dev, s32 *val)
{
 int ret;
 u8 buf[3] = { MS5611_READ_ADC };
 struct ms5611_state *st = iio_priv(dev_to_iio_dev(dev));

 ret = spi_write_then_read(st->client, buf, 1, buf, 3);
 if (ret < 0)
  return ret;

 *val = (buf[0] << 16) | (buf[1] << 8) | buf[2];

 return 0;
}
