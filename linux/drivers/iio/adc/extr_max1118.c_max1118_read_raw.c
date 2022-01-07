
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1118 {int spi; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct max1118* iio_priv (struct iio_dev*) ;
 int max1118_get_vref_mV (int ) ;
 int max1118_read (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max1118_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val, int *val2, long mask)
{
 struct max1118 *adc = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  mutex_lock(&adc->lock);
  *val = max1118_read(adc->spi, chan->channel);
  mutex_unlock(&adc->lock);
  if (*val < 0)
   return *val;

  return IIO_VAL_INT;
 case 128:
  *val = max1118_get_vref_mV(adc->spi);
  if (*val < 0)
   return *val;
  *val2 = 8;

  return IIO_VAL_FRACTIONAL_LOG2;
 }

 return -EINVAL;
}
