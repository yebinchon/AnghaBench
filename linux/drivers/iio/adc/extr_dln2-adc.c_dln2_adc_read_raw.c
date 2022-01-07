
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct dln2_adc {int sample_period; int mutex; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int dln2_adc_read (struct dln2_adc*,int ) ;
 struct dln2_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dln2_adc_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val,
        int *val2,
        long mask)
{
 int ret;
 unsigned int microhertz;
 struct dln2_adc *dln2 = iio_priv(indio_dev);

 switch (mask) {
 case 130:
  mutex_lock(&dln2->mutex);
  ret = dln2_adc_read(dln2, chan->channel);
  mutex_unlock(&dln2->mutex);

  if (ret < 0)
   return ret;

  *val = ret;
  return IIO_VAL_INT;

 case 128:




  *val = 0;
  *val2 = 3222656;
  return IIO_VAL_INT_PLUS_NANO;

 case 129:
  if (dln2->sample_period) {
   microhertz = 1000000000 / dln2->sample_period;
   *val = microhertz / 1000000;
   *val2 = microhertz % 1000000;
  } else {
   *val = 0;
   *val2 = 0;
  }

  return IIO_VAL_INT_PLUS_MICRO;

 default:
  return -EINVAL;
 }
}
