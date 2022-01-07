
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29125_data {int conf1; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int ISL29125_CONF1 ;
 int ISL29125_MODE_RANGE ;
 int ISL29125_SENSING_RANGE_0 ;
 int ISL29125_SENSING_RANGE_1 ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct isl29125_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int isl29125_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{
 struct isl29125_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  if (val != 0)
   return -EINVAL;
  if (val2 == ISL29125_SENSING_RANGE_1)
   data->conf1 |= ISL29125_MODE_RANGE;
  else if (val2 == ISL29125_SENSING_RANGE_0)
   data->conf1 &= ~ISL29125_MODE_RANGE;
  else
   return -EINVAL;
  return i2c_smbus_write_byte_data(data->client, ISL29125_CONF1,
   data->conf1);
 default:
  return -EINVAL;
 }
}
