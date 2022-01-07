
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct cc10001_adc_device {int reg; int lock; } ;


 int CC10001_INVALID_SAMPLED ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int cc10001_adc_read_raw_voltage (struct iio_dev*,struct iio_chan_spec const*) ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct cc10001_adc_device* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int cc10001_adc_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct cc10001_adc_device *adc_dev = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  if (iio_buffer_enabled(indio_dev))
   return -EBUSY;
  mutex_lock(&adc_dev->lock);
  *val = cc10001_adc_read_raw_voltage(indio_dev, chan);
  mutex_unlock(&adc_dev->lock);

  if (*val == CC10001_INVALID_SAMPLED)
   return -EIO;
  return IIO_VAL_INT;

 case 128:
  ret = regulator_get_voltage(adc_dev->reg);
  if (ret < 0)
   return ret;

  *val = ret / 1000;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  return -EINVAL;
 }
}
