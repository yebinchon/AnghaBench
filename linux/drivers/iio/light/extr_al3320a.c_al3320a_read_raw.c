
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct al3320a_data {int client; } ;


 int AL3320A_GAIN_MASK ;
 int AL3320A_GAIN_SHIFT ;
 int AL3320A_REG_CONFIG_RANGE ;
 int AL3320A_REG_DATA_LOW ;
 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int** al3320a_scales ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_read_word_data (int ,int ) ;
 struct al3320a_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int al3320a_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int *val,
       int *val2, long mask)
{
 struct al3320a_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:





  ret = i2c_smbus_read_word_data(data->client,
            AL3320A_REG_DATA_LOW);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:
  ret = i2c_smbus_read_byte_data(data->client,
            AL3320A_REG_CONFIG_RANGE);
  if (ret < 0)
   return ret;

  ret = (ret & AL3320A_GAIN_MASK) >> AL3320A_GAIN_SHIFT;
  *val = al3320a_scales[ret][0];
  *val2 = al3320a_scales[ret][1];

  return IIO_VAL_INT_PLUS_MICRO;
 }
 return -EINVAL;
}
