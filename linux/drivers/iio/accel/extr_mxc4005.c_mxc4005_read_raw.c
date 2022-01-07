
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxc4005_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; int type; } ;


 int EBUSY ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct mxc4005_data* iio_priv (struct iio_dev*) ;
 int mxc4005_read_axis (struct mxc4005_data*,int ) ;
 int mxc4005_read_scale (struct mxc4005_data*) ;
 int sign_extend32 (int,int ) ;

__attribute__((used)) static int mxc4005_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mxc4005_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  switch (chan->type) {
  case 130:
   if (iio_buffer_enabled(indio_dev))
    return -EBUSY;

   ret = mxc4005_read_axis(data, chan->address);
   if (ret < 0)
    return ret;
   *val = sign_extend32(ret >> chan->scan_type.shift,
          chan->scan_type.realbits - 1);
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 128:
  ret = mxc4005_read_scale(data);
  if (ret < 0)
   return ret;

  *val = 0;
  *val2 = ret;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
