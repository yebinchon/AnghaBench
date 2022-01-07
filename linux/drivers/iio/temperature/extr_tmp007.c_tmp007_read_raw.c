
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp007_data {int config; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;
typedef int s32 ;


 int EINVAL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int TMP007_CONFIG_CR_MASK ;
 int TMP007_CONFIG_CR_SHIFT ;
 int TMP007_TDIE ;
 int TMP007_TEMP_SHIFT ;
 int TMP007_TOBJECT ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 struct tmp007_data* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int,int) ;
 int** tmp007_avgs ;
 int tmp007_read_temperature (struct tmp007_data*,int ) ;

__attribute__((used)) static int tmp007_read_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *channel, int *val,
  int *val2, long mask)
{
 struct tmp007_data *data = iio_priv(indio_dev);
 s32 ret;
 int conv_rate;

 switch (mask) {
 case 132:
  switch (channel->channel2) {
  case 129:
   ret = i2c_smbus_read_word_swapped(data->client, TMP007_TDIE);
   if (ret < 0)
    return ret;
   break;
  case 128:
   ret = tmp007_read_temperature(data, TMP007_TOBJECT);
   if (ret < 0)
    return ret;
   break;
  default:
   return -EINVAL;
  }

  *val = sign_extend32(ret, 15) >> TMP007_TEMP_SHIFT;

  return IIO_VAL_INT;
 case 130:
  *val = 31;
  *val2 = 250000;

  return IIO_VAL_INT_PLUS_MICRO;
 case 131:
  conv_rate = (data->config & TMP007_CONFIG_CR_MASK)
    >> TMP007_CONFIG_CR_SHIFT;
  *val = tmp007_avgs[conv_rate][0];
  *val2 = tmp007_avgs[conv_rate][1];

  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
