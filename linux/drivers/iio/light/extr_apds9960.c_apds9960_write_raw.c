
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct apds9960_data {int dummy; } ;


 int EINVAL ;




 int apds9960_set_als_gain (struct apds9960_data*,int) ;
 int apds9960_set_it_time (struct apds9960_data*,int) ;
 int apds9960_set_pxs_gain (struct apds9960_data*,int) ;
 struct apds9960_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int apds9960_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct apds9960_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 131:

  switch (chan->type) {
  case 129:
   if (val != 0)
    return -EINVAL;
   return apds9960_set_it_time(data, val2);
  default:
   return -EINVAL;
  }
 case 130:
  if (val2 != 0)
   return -EINVAL;
  switch (chan->type) {
  case 128:
   return apds9960_set_pxs_gain(data, val);
  case 129:
   return apds9960_set_als_gain(data, val);
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 };

 return 0;
}
