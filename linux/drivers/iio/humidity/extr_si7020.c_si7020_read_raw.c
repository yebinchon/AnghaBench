
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;



 int IIO_HUMIDITYRELATIVE ;
 int IIO_TEMP ;
 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int SI7020CMD_RH_HOLD ;
 int SI7020CMD_TEMP_HOLD ;
 int clamp_val (int,int,int) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 struct i2c_client** iio_priv (struct iio_dev*) ;

__attribute__((used)) static int si7020_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan, int *val,
      int *val2, long mask)
{
 struct i2c_client **client = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = i2c_smbus_read_word_swapped(*client,
        chan->type == IIO_TEMP ?
        SI7020CMD_TEMP_HOLD :
        SI7020CMD_RH_HOLD);
  if (ret < 0)
   return ret;
  *val = ret >> 2;




  if (chan->type == IIO_HUMIDITYRELATIVE)
   *val = clamp_val(*val, 786, 13893);
  return IIO_VAL_INT;
 case 128:
  if (chan->type == IIO_TEMP)
   *val = 175720;
  else
   *val = 125 * 1000;
  *val2 = 65536 >> 2;
  return IIO_VAL_FRACTIONAL;
 case 130:
  if (chan->type == IIO_TEMP)
   *val = -4368;
  else
   *val = -786;
  return IIO_VAL_INT;
 default:
  break;
 }

 return -EINVAL;
}
