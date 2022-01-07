
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct adjd_s311_data {int client; } ;


 int ADJD_S311_CAP_MASK ;
 int ADJD_S311_CAP_REG (int ) ;
 int ADJD_S311_DATA_REG (int ) ;
 int ADJD_S311_INT_MASK ;
 int ADJD_S311_INT_REG (int ) ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int adjd_s311_read_data (struct iio_dev*,int ,int*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_read_word_data (int ,int ) ;
 struct adjd_s311_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adjd_s311_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct adjd_s311_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  ret = adjd_s311_read_data(indio_dev,
   ADJD_S311_DATA_REG(chan->address), val);
  if (ret < 0)
   return ret;
  return IIO_VAL_INT;
 case 130:
  ret = i2c_smbus_read_byte_data(data->client,
   ADJD_S311_CAP_REG(chan->address));
  if (ret < 0)
   return ret;
  *val = ret & ADJD_S311_CAP_MASK;
  return IIO_VAL_INT;
 case 129:
  ret = i2c_smbus_read_word_data(data->client,
   ADJD_S311_INT_REG(chan->address));
  if (ret < 0)
   return ret;
  *val = 0;




  *val2 = ret & ADJD_S311_INT_MASK;
  return IIO_VAL_INT_PLUS_MICRO;
 }
 return -EINVAL;
}
