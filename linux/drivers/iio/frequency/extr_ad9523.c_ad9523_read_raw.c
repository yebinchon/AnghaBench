
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad9523_state {int* vco_out_freq; size_t* vco_out_map; int lock; } ;


 int AD9523_CHANNEL_CLOCK_DIST (size_t) ;
 int AD9523_CLK_DIST_DIV_PHASE_REV (int) ;
 int AD9523_CLK_DIST_DIV_REV (int) ;
 int AD9523_CLK_DIST_PWR_DOWN_EN ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int ad9523_read (struct iio_dev*,int ) ;
 struct ad9523_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad9523_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad9523_state *st = iio_priv(indio_dev);
 unsigned int code;
 int ret;

 mutex_lock(&st->lock);
 ret = ad9523_read(indio_dev, AD9523_CHANNEL_CLOCK_DIST(chan->channel));
 mutex_unlock(&st->lock);

 if (ret < 0)
  return ret;

 switch (m) {
 case 128:
  *val = !(ret & AD9523_CLK_DIST_PWR_DOWN_EN);
  return IIO_VAL_INT;
 case 130:
  *val = st->vco_out_freq[st->vco_out_map[chan->channel]] /
   AD9523_CLK_DIST_DIV_REV(ret);
  return IIO_VAL_INT;
 case 129:
  code = (AD9523_CLK_DIST_DIV_PHASE_REV(ret) * 3141592) /
   AD9523_CLK_DIST_DIV_REV(ret);
  *val = code / 1000000;
  *val2 = code % 1000000;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
