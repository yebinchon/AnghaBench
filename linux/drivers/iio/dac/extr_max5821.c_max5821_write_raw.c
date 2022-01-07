
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;

 int max5821_set_value (struct iio_dev*,int,int ) ;

__attribute__((used)) static int max5821_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 if (val2 != 0)
  return -EINVAL;

 switch (mask) {
 case 128:
  return max5821_set_value(indio_dev, val, chan->channel);
 default:
  return -EINVAL;
 }
}
