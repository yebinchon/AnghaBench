
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cm32181_chip {int calibscale; } ;


 int EINVAL ;


 int cm32181_write_als_it (struct cm32181_chip*,int) ;
 struct cm32181_chip* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int cm32181_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct cm32181_chip *cm32181 = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  cm32181->calibscale = val;
  return val;
 case 128:
  ret = cm32181_write_als_it(cm32181, val2);
  return ret;
 }

 return -EINVAL;
}
