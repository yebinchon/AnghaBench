
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc18xx_adc {int vref; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct lpc18xx_adc* iio_priv (struct iio_dev*) ;
 int lpc18xx_adc_read_chan (struct lpc18xx_adc*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int lpc18xx_adc_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct lpc18xx_adc *adc = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  mutex_lock(&adc->lock);
  *val = lpc18xx_adc_read_chan(adc, chan->channel);
  mutex_unlock(&adc->lock);
  if (*val < 0)
   return *val;

  return IIO_VAL_INT;

 case 128:
  *val = regulator_get_voltage(adc->vref) / 1000;
  *val2 = 10;

  return IIO_VAL_FRACTIONAL_LOG2;
 }

 return -EINVAL;
}
