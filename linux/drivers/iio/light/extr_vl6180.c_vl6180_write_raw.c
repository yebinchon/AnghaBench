
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl6180_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;


 int IIO_LIGHT ;
 struct vl6180_data* iio_priv (struct iio_dev*) ;
 int vl6180_set_als_gain (struct vl6180_data*,int,int) ;
 int vl6180_set_it (struct vl6180_data*,int,int) ;

__attribute__((used)) static int vl6180_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct vl6180_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  return vl6180_set_it(data, val, val2);

 case 129:
  if (chan->type != IIO_LIGHT)
   return -EINVAL;

  return vl6180_set_als_gain(data, val, val2);
 default:
  return -EINVAL;
 }
}
