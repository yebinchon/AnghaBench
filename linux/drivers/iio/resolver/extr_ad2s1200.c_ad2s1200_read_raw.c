
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; } ;
struct ad2s1200_state {int lock; int rx; int sdev; int rdvel; int sample; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int be16_to_cpup (int *) ;
 int gpiod_set_value (int ,int) ;
 struct ad2s1200_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;
 int spi_read (int ,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static int ad2s1200_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val,
        int *val2,
        long m)
{
 struct ad2s1200_state *st = iio_priv(indio_dev);
 int ret;

 switch (m) {
 case 128:
  switch (chan->type) {
  case 131:

   *val = 0;
   *val2 = 1534355;
   return IIO_VAL_INT_PLUS_NANO;
  case 130:

   *val = 6;
   *val2 = 283185;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
  break;
 case 129:
  mutex_lock(&st->lock);
  gpiod_set_value(st->sample, 0);


  udelay(1);
  gpiod_set_value(st->sample, 1);
  gpiod_set_value(st->rdvel, !!(chan->type == 131));

  ret = spi_read(st->sdev, &st->rx, 2);
  if (ret < 0) {
   mutex_unlock(&st->lock);
   return ret;
  }

  switch (chan->type) {
  case 131:
   *val = be16_to_cpup(&st->rx) >> 4;
   break;
  case 130:
   *val = sign_extend32(be16_to_cpup(&st->rx) >> 4, 11);
   break;
  default:
   mutex_unlock(&st->lock);
   return -EINVAL;
  }


  udelay(1);
  mutex_unlock(&st->lock);

  return IIO_VAL_INT;
 default:
  break;
 }

 return -EINVAL;
}
