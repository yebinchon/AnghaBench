
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2632_state {int powerdown_cache_mask; int spi_dev; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef int ssize_t ;


 int LTC2632_CMD_POWERDOWN_DAC_N ;
 struct ltc2632_state* iio_priv (struct iio_dev*) ;
 int ltc2632_spi_write (int ,int ,int,int ,int ) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t ltc2632_write_dac_powerdown(struct iio_dev *indio_dev,
        uintptr_t private,
        const struct iio_chan_spec *chan,
        const char *buf,
        size_t len)
{
 bool pwr_down;
 int ret;
 struct ltc2632_state *st = iio_priv(indio_dev);

 ret = strtobool(buf, &pwr_down);
 if (ret)
  return ret;

 if (pwr_down)
  st->powerdown_cache_mask |= (1 << chan->channel);
 else
  st->powerdown_cache_mask &= ~(1 << chan->channel);

 ret = ltc2632_spi_write(st->spi_dev,
    LTC2632_CMD_POWERDOWN_DAC_N,
    chan->channel, 0, 0);

 return ret ? ret : len;
}
