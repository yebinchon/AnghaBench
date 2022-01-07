
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cm32181_chip {int calibscale; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int cm32181_get_lux (struct cm32181_chip*) ;
 int cm32181_read_als_it (struct cm32181_chip*,int*) ;
 struct cm32181_chip* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int cm32181_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct cm32181_chip *cm32181 = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  ret = cm32181_get_lux(cm32181);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 130:
  *val = cm32181->calibscale;
  return IIO_VAL_INT;
 case 129:
  *val = 0;
  ret = cm32181_read_als_it(cm32181, val2);
  return ret;
 }

 return -EINVAL;
}
