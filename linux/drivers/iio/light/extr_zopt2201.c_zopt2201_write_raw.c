
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zopt2201_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;




 struct zopt2201_data* iio_priv (struct iio_dev*) ;
 int zopt2201_write_resolution (struct zopt2201_data*,int,int) ;
 int zopt2201_write_scale_als (struct zopt2201_data*,int,int) ;
 int zopt2201_write_scale_uvb (struct zopt2201_data*,int,int) ;

__attribute__((used)) static int zopt2201_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int val, int val2, long mask)
{
 struct zopt2201_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 131:
  return zopt2201_write_resolution(data, val, val2);
 case 130:
  switch (chan->address) {
  case 129:
   return zopt2201_write_scale_als(data, val, val2);
  case 128:
   return zopt2201_write_scale_uvb(data, val, val2);
  default:
   return -EINVAL;
  }
 }

 return -EINVAL;
}
