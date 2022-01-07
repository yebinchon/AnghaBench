
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max5432_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 int MAX5432_MAX_POS ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct max5432_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max5432_write_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int val, int val2, long mask)
{
 struct max5432_data *data = iio_priv(indio_dev);
 u8 data_byte;

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 if (val < 0 || val > MAX5432_MAX_POS)
  return -EINVAL;

 if (val2 != 0)
  return -EINVAL;


 data_byte = val << 3;
 return i2c_smbus_write_byte_data(data->client, chan->address,
   data_byte);
}
