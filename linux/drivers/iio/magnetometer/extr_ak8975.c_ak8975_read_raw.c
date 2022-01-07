
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; } ;
struct ak8975_data {int* raw_to_gauss; } ;


 int EINVAL ;


 int IIO_VAL_INT_PLUS_MICRO ;
 int ak8975_read_axis (struct iio_dev*,size_t,int*) ;
 struct ak8975_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ak8975_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2,
      long mask)
{
 struct ak8975_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  return ak8975_read_axis(indio_dev, chan->address, val);
 case 128:
  *val = 0;
  *val2 = data->raw_to_gauss[chan->address];
  return IIO_VAL_INT_PLUS_MICRO;
 }
 return -EINVAL;
}
