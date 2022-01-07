
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct TYPE_3__ {unsigned int realbits; unsigned int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad5446_state {int pwr_down; unsigned int pwr_down_mode; unsigned int cached_val; TYPE_2__* chip_info; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* write ) (struct ad5446_state*,unsigned int) ;} ;


 struct ad5446_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;
 int stub1 (struct ad5446_state*,unsigned int) ;

__attribute__((used)) static ssize_t ad5446_write_dac_powerdown(struct iio_dev *indio_dev,
         uintptr_t private,
         const struct iio_chan_spec *chan,
         const char *buf, size_t len)
{
 struct ad5446_state *st = iio_priv(indio_dev);
 unsigned int shift;
 unsigned int val;
 bool powerdown;
 int ret;

 ret = strtobool(buf, &powerdown);
 if (ret)
  return ret;

 mutex_lock(&indio_dev->mlock);
 st->pwr_down = powerdown;

 if (st->pwr_down) {
  shift = chan->scan_type.realbits + chan->scan_type.shift;
  val = st->pwr_down_mode << shift;
 } else {
  val = st->cached_val;
 }

 ret = st->chip_info->write(st, val);
 mutex_unlock(&indio_dev->mlock);

 return ret ? ret : len;
}
