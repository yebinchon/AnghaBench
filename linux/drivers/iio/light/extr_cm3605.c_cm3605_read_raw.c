
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct cm3605 {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int cm3605_get_lux (struct cm3605*) ;
 struct cm3605* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int cm3605_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct cm3605 *cm3605 = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  switch (chan->type) {
  case 128:
   ret = cm3605_get_lux(cm3605);
   if (ret < 0)
    return ret;
   *val = ret;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
