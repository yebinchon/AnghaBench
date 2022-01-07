
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct adjd_s311_data {int client; } ;


 int ADJD_S311_CAP_MASK ;
 int ADJD_S311_CAP_REG (int ) ;
 int ADJD_S311_INT_MASK ;
 int ADJD_S311_INT_REG (int ) ;
 int EINVAL ;


 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int i2c_smbus_write_word_data (int ,int ,int) ;
 struct adjd_s311_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adjd_s311_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{
 struct adjd_s311_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  if (val < 0 || val > ADJD_S311_CAP_MASK)
   return -EINVAL;

  return i2c_smbus_write_byte_data(data->client,
   ADJD_S311_CAP_REG(chan->address), val);
 case 128:
  if (val != 0 || val2 < 0 || val2 > ADJD_S311_INT_MASK)
   return -EINVAL;

  return i2c_smbus_write_word_data(data->client,
   ADJD_S311_INT_REG(chan->address), val2);
 }
 return -EINVAL;
}
