
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef int s32 ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int tsys01_read_temperature (struct iio_dev*,int*) ;

__attribute__((used)) static int tsys01_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *channel, int *val,
      int *val2, long mask)
{
 int ret;
 s32 temperature;

 switch (mask) {
 case 129:
  switch (channel->type) {
  case 128:
   ret = tsys01_read_temperature(indio_dev, &temperature);
   if (ret)
    return ret;
   *val = temperature;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
