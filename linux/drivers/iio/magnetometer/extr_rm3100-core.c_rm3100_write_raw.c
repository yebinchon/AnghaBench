
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int rm3100_set_samp_freq (struct iio_dev*,int,int) ;

__attribute__((used)) static int rm3100_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 switch (mask) {
 case 128:
  return rm3100_set_samp_freq(indio_dev, val, val2);
 default:
  return -EINVAL;
 }
}
