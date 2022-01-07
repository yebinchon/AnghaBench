
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;

 int max517_set_value (struct iio_dev*,int,int ) ;

__attribute__((used)) static int max517_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 int ret;

 switch (mask) {
 case 128:
  ret = max517_set_value(indio_dev, val, chan->channel);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
