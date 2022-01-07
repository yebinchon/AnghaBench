
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int differential; int scan_index; } ;
struct ads8344 {int reg; int lock; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ads8344_adc_conversion (struct ads8344*,int ,int ) ;
 struct ads8344* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ads8344_read_raw(struct iio_dev *iio,
       struct iio_chan_spec const *channel, int *value,
       int *shift, long mask)
{
 struct ads8344 *adc = iio_priv(iio);

 switch (mask) {
 case 129:
  mutex_lock(&adc->lock);
  *value = ads8344_adc_conversion(adc, channel->scan_index,
      channel->differential);
  mutex_unlock(&adc->lock);
  if (*value < 0)
   return *value;

  return IIO_VAL_INT;
 case 128:
  *value = regulator_get_voltage(adc->reg);
  if (*value < 0)
   return *value;


  *value /= 1000;
  *shift = 16;

  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  return -EINVAL;
 }
}
