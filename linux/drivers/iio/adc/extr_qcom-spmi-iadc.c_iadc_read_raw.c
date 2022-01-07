
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct iadc_chip {int* offset; int* rsense; int gain; int dev; int lock; } ;
typedef int s32 ;


 int EINVAL ;
 int IADC_REF_GAIN_MICRO_VOLTS ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int dev_dbg (int ,char*,int,int ,int,int,int) ;
 int iadc_do_conversion (struct iadc_chip*,size_t,int*) ;
 struct iadc_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iadc_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct iadc_chip *iadc = iio_priv(indio_dev);
 s32 isense_ua, vsense_uv;
 u16 adc_raw, vsense_raw;
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&iadc->lock);
  ret = iadc_do_conversion(iadc, chan->channel, &adc_raw);
  mutex_unlock(&iadc->lock);
  if (ret < 0)
   return ret;

  vsense_raw = adc_raw - iadc->offset[chan->channel];

  vsense_uv = vsense_raw * IADC_REF_GAIN_MICRO_VOLTS;
  vsense_uv /= (s32)iadc->gain - iadc->offset[chan->channel];

  isense_ua = vsense_uv / iadc->rsense[chan->channel];

  dev_dbg(iadc->dev, "off %d gain %d adc %d %duV I %duA\n",
   iadc->offset[chan->channel], iadc->gain,
   adc_raw, vsense_uv, isense_ua);

  *val = isense_ua;
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = 1000;
  return IIO_VAL_INT_PLUS_MICRO;
 }

 return -EINVAL;
}
