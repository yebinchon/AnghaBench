
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad5064_state {unsigned int* pwr_down_mode; int lock; } ;


 int ad5064_sync_powerdown_mode (struct ad5064_state*,struct iio_chan_spec const*) ;
 struct ad5064_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5064_set_powerdown_mode(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, unsigned int mode)
{
 struct ad5064_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);
 st->pwr_down_mode[chan->channel] = mode + 1;

 ret = ad5064_sync_powerdown_mode(st, chan);
 mutex_unlock(&st->lock);

 return ret;
}
