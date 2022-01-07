
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct TYPE_3__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad5446_state {int cached_val; TYPE_2__* chip_info; int pwr_down; } ;
struct TYPE_4__ {int (* write ) (struct ad5446_state*,int) ;} ;


 int EINVAL ;

 struct ad5446_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad5446_state*,int) ;

__attribute__((used)) static int ad5446_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct ad5446_state *st = iio_priv(indio_dev);
 int ret = 0;

 switch (mask) {
 case 128:
  if (val >= (1 << chan->scan_type.realbits) || val < 0)
   return -EINVAL;

  val <<= chan->scan_type.shift;
  mutex_lock(&indio_dev->mlock);
  st->cached_val = val;
  if (!st->pwr_down)
   ret = st->chip_info->write(st, val);
  mutex_unlock(&indio_dev->mlock);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
