
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct adc081c {int bits; int ref; int i2c; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int REG_CONV_RES ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 struct adc081c* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int adc081c_read_raw(struct iio_dev *iio,
       struct iio_chan_spec const *channel, int *value,
       int *shift, long mask)
{
 struct adc081c *adc = iio_priv(iio);
 int err;

 switch (mask) {
 case 129:
  err = i2c_smbus_read_word_swapped(adc->i2c, REG_CONV_RES);
  if (err < 0)
   return err;

  *value = (err & 0xFFF) >> (12 - adc->bits);
  return IIO_VAL_INT;

 case 128:
  err = regulator_get_voltage(adc->ref);
  if (err < 0)
   return err;

  *value = err / 1000;
  *shift = adc->bits;

  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  break;
 }

 return -EINVAL;
}
