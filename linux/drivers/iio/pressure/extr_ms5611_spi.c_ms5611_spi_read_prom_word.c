
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ms5611_state {int client; } ;
struct device {int dummy; } ;


 scalar_t__ MS5611_READ_PROM_WORD ;
 int dev_to_iio_dev (struct device*) ;
 struct ms5611_state* iio_priv (int ) ;
 int spi_w8r16be (int ,scalar_t__) ;

__attribute__((used)) static int ms5611_spi_read_prom_word(struct device *dev, int index, u16 *word)
{
 int ret;
 struct ms5611_state *st = iio_priv(dev_to_iio_dev(dev));

 ret = spi_w8r16be(st->client, MS5611_READ_PROM_WORD + (index << 1));
 if (ret < 0)
  return ret;

 *word = ret;

 return 0;
}
