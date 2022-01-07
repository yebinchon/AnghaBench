
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad8366_state {int type; int* ch; int lock; struct ad8366_info* info; } ;
struct ad8366_info {int gain_max; int gain_min; } ;


 int EINVAL ;




 int ad8366_write (struct iio_dev*,int,int) ;
 struct ad8366_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad8366_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val,
       int val2,
       long mask)
{
 struct ad8366_state *st = iio_priv(indio_dev);
 struct ad8366_info *inf = st->info;
 int code = 0, gain;
 int ret;


 if (val < 0)
  gain = (val * 1000) - (val2 / 1000);
 else
  gain = (val * 1000) + (val2 / 1000);

 if (gain > inf->gain_max || gain < inf->gain_min)
  return -EINVAL;

 switch (st->type) {
 case 131:
  code = (gain - 4500) / 253;
  break;
 case 130:
  code = (15000 - gain) / 1000;
  break;
 case 129:
  code = ((gain - 500 - 20000) / 500) & 0x3F;
  break;
 }

 mutex_lock(&st->lock);
 switch (mask) {
 case 128:
  st->ch[chan->channel] = code;
  ret = ad8366_write(indio_dev, st->ch[0], st->ch[1]);
  break;
 default:
  ret = -EINVAL;
 }
 mutex_unlock(&st->lock);

 return ret;
}
