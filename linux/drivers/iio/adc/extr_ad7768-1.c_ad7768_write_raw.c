
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad7768_state {int dummy; } ;


 int EINVAL ;

 int ad7768_set_freq (struct ad7768_state*,int) ;
 struct ad7768_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7768_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long info)
{
 struct ad7768_state *st = iio_priv(indio_dev);

 switch (info) {
 case 128:
  return ad7768_set_freq(st, val);
 default:
  return -EINVAL;
 }
}
