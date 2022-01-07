
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpadc {int dev; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int PALMAS_ADC_CH_MAX ;
 int dev_err (int ,char*) ;
 struct palmas_gpadc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int palmas_gpadc_get_calibrated_code (struct palmas_gpadc*,int,int) ;
 int palmas_gpadc_read_done (struct palmas_gpadc*,int) ;
 int palmas_gpadc_read_prepare (struct palmas_gpadc*,int) ;
 int palmas_gpadc_start_conversion (struct palmas_gpadc*,int) ;

__attribute__((used)) static int palmas_gpadc_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long mask)
{
 struct palmas_gpadc *adc = iio_priv(indio_dev);
 int adc_chan = chan->channel;
 int ret = 0;

 if (adc_chan > PALMAS_ADC_CH_MAX)
  return -EINVAL;

 mutex_lock(&indio_dev->mlock);

 switch (mask) {
 case 128:
 case 129:
  ret = palmas_gpadc_read_prepare(adc, adc_chan);
  if (ret < 0)
   goto out;

  ret = palmas_gpadc_start_conversion(adc, adc_chan);
  if (ret < 0) {
   dev_err(adc->dev,
   "ADC start conversion failed\n");
   goto out;
  }

  if (mask == 129)
   ret = palmas_gpadc_get_calibrated_code(
       adc, adc_chan, ret);

  *val = ret;

  ret = IIO_VAL_INT;
  goto out;
 }

 mutex_unlock(&indio_dev->mlock);
 return ret;

out:
 palmas_gpadc_read_done(adc, adc_chan);
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
