
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct adc12138 {int vref_n; int vref_p; int lock; } ;
typedef int __be16 ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IS_ERR (int ) ;
 int adc12138_adc_conversion (struct adc12138*,struct iio_chan_spec const*,int *) ;
 int be16_to_cpu (int ) ;
 struct adc12138* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int adc12138_read_raw(struct iio_dev *iio,
        struct iio_chan_spec const *channel, int *value,
        int *shift, long mask)
{
 struct adc12138 *adc = iio_priv(iio);
 int ret;
 __be16 data;

 switch (mask) {
 case 129:
  mutex_lock(&adc->lock);
  ret = adc12138_adc_conversion(adc, channel, &data);
  mutex_unlock(&adc->lock);
  if (ret)
   return ret;

  *value = sign_extend32(be16_to_cpu(data) >> 3, 12);

  return IIO_VAL_INT;
 case 128:
  ret = regulator_get_voltage(adc->vref_p);
  if (ret < 0)
   return ret;
  *value = ret;

  if (!IS_ERR(adc->vref_n)) {
   ret = regulator_get_voltage(adc->vref_n);
   if (ret < 0)
    return ret;
   *value -= ret;
  }


  *value /= 1000;
  *shift = channel->scan_type.realbits - 1;

  return IIO_VAL_FRACTIONAL_LOG2;
 case 130:
  if (!IS_ERR(adc->vref_n)) {
   *value = regulator_get_voltage(adc->vref_n);
   if (*value < 0)
    return *value;
  } else {
   *value = 0;
  }


  *value /= 1000;

  return IIO_VAL_INT;
 }

 return -EINVAL;
}
