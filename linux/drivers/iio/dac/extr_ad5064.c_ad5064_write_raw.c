
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {size_t channel; TYPE_1__ scan_type; int address; } ;
struct ad5064_state {int* dac_cache; int lock; } ;


 int AD5064_CMD_WRITE_INPUT_N_UPDATE_N ;
 int EINVAL ;

 int ad5064_write (struct ad5064_state*,int ,int ,int,int ) ;
 struct ad5064_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5064_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 struct ad5064_state *st = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (val >= (1 << chan->scan_type.realbits) || val < 0)
   return -EINVAL;

  mutex_lock(&st->lock);
  ret = ad5064_write(st, AD5064_CMD_WRITE_INPUT_N_UPDATE_N,
    chan->address, val, chan->scan_type.shift);
  if (ret == 0)
   st->dac_cache[chan->channel] = val;
  mutex_unlock(&st->lock);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
