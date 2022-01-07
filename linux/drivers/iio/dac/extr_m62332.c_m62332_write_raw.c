
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;

 int m62332_set_value (struct iio_dev*,int,int ) ;

__attribute__((used)) static int m62332_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int val, int val2,
       long mask)
{
 switch (mask) {
 case 128:
  if (val < 0 || val > 255)
   return -EINVAL;

  return m62332_set_value(indio_dev, val, chan->channel);
 default:
  break;
 }

 return -EINVAL;
}
