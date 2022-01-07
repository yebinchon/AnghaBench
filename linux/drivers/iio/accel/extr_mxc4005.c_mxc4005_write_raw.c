
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc4005_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 struct mxc4005_data* iio_priv (struct iio_dev*) ;
 int mxc4005_set_scale (struct mxc4005_data*,int) ;

__attribute__((used)) static int mxc4005_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct mxc4005_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  if (val != 0)
   return -EINVAL;

  return mxc4005_set_scale(data, val2);
 default:
  return -EINVAL;
 }
}
