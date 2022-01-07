
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {size_t channel; int address; TYPE_1__ scan_type; } ;
struct ad7303_state {int* dac_cache; } ;


 int EINVAL ;

 int ad7303_write (struct ad7303_state*,int ,int) ;
 struct ad7303_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad7303_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 struct ad7303_state *st = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (val >= (1 << chan->scan_type.realbits) || val < 0)
   return -EINVAL;

  mutex_lock(&indio_dev->mlock);
  ret = ad7303_write(st, chan->address, val);
  if (ret == 0)
   st->dac_cache[chan->channel] = val;
  mutex_unlock(&indio_dev->mlock);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
