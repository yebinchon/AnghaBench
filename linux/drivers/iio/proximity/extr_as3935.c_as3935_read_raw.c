
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct as3935_state {int dummy; } ;


 int AS3935_DATA ;
 int AS3935_DATA_MASK ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int as3935_read (struct as3935_state*,int ,int*) ;
 struct as3935_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int as3935_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct as3935_state *st = iio_priv(indio_dev);
 int ret;


 switch (m) {
 case 130:
 case 129:
  *val2 = 0;
  ret = as3935_read(st, AS3935_DATA, val);
  if (ret)
   return ret;


  if (*val == AS3935_DATA_MASK)
   return -EINVAL;

  if (m == 129)
   return IIO_VAL_INT;

  if (m == 130)
   *val *= 1000;
  break;
 case 128:
  *val = 1000;
  break;
 default:
  return -EINVAL;
 }

 return IIO_VAL_INT;
}
