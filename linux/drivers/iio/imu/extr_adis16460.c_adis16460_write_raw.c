
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int adis16460_set_freq (struct iio_dev*,int,int) ;

__attribute__((used)) static int adis16460_write_raw(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int val, int val2, long info)
{
 switch (info) {
 case 128:
  return adis16460_set_freq(indio_dev, val, val2);
 default:
  return -EINVAL;
 }
}
