
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad5064_state {int* pwr_down; int lock; } ;
typedef int ssize_t ;


 int ad5064_sync_powerdown_mode (struct ad5064_state*,struct iio_chan_spec const*) ;
 struct ad5064_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t ad5064_write_dac_powerdown(struct iio_dev *indio_dev,
  uintptr_t private, const struct iio_chan_spec *chan, const char *buf,
  size_t len)
{
 struct ad5064_state *st = iio_priv(indio_dev);
 bool pwr_down;
 int ret;

 ret = strtobool(buf, &pwr_down);
 if (ret)
  return ret;

 mutex_lock(&st->lock);
 st->pwr_down[chan->channel] = pwr_down;

 ret = ad5064_sync_powerdown_mode(st, chan);
 mutex_unlock(&st->lock);
 return ret ? ret : len;
}
