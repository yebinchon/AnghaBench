
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct ad2s90_state {int* rx; int lock; int sdev; } ;


 int EINVAL ;
 scalar_t__ IIO_ANGL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct ad2s90_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_read (int ,int*,int) ;

__attribute__((used)) static int ad2s90_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 int ret;
 struct ad2s90_state *st = iio_priv(indio_dev);

 if (chan->type != IIO_ANGL)
  return -EINVAL;

 switch (m) {
 case 128:

  *val = 6283;
  *val2 = 12;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 129:
  mutex_lock(&st->lock);
  ret = spi_read(st->sdev, st->rx, 2);
  if (ret < 0) {
   mutex_unlock(&st->lock);
   return ret;
  }
  *val = (((u16)(st->rx[0])) << 4) | ((st->rx[1] & 0xF0) >> 4);

  mutex_unlock(&st->lock);

  return IIO_VAL_INT;
 default:
  break;
 }

 return -EINVAL;
}
