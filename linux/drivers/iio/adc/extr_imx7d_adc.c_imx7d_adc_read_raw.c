
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7d_adc {int channel; int value; int vref_uv; int vref; int completion; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;
 int ETIMEDOUT ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IMX7D_ADC_TIMEOUT ;
 struct imx7d_adc* iio_priv (struct iio_dev*) ;
 int imx7d_adc_channel_set (struct imx7d_adc*) ;
 int imx7d_adc_get_sample_rate (struct imx7d_adc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;
 int reinit_completion (int *) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int imx7d_adc_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val,
   int *val2,
   long mask)
{
 struct imx7d_adc *info = iio_priv(indio_dev);

 u32 channel;
 long ret;

 switch (mask) {
 case 130:
  mutex_lock(&indio_dev->mlock);
  reinit_completion(&info->completion);

  channel = chan->channel & 0x03;
  info->channel = channel;
  imx7d_adc_channel_set(info);

  ret = wait_for_completion_interruptible_timeout
    (&info->completion, IMX7D_ADC_TIMEOUT);
  if (ret == 0) {
   mutex_unlock(&indio_dev->mlock);
   return -ETIMEDOUT;
  }
  if (ret < 0) {
   mutex_unlock(&indio_dev->mlock);
   return ret;
  }

  *val = info->value;
  mutex_unlock(&indio_dev->mlock);
  return IIO_VAL_INT;

 case 128:
  info->vref_uv = regulator_get_voltage(info->vref);
  *val = info->vref_uv / 1000;
  *val2 = 12;
  return IIO_VAL_FRACTIONAL_LOG2;

 case 129:
  *val = imx7d_adc_get_sample_rate(info);
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
