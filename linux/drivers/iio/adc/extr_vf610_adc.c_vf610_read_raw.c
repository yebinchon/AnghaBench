
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int res_mode; size_t sample_rate; } ;
struct vf610_adc {int value; int vref_uv; int* sample_freq_avail; TYPE_1__ adc_feature; int completion; scalar_t__ regs; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int type; int channel; } ;


 int EBUSY ;
 int EINVAL ;
 int ETIMEDOUT ;





 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;

 unsigned int VF610_ADC_ADCHC (int ) ;
 unsigned int VF610_ADC_AIEN ;
 int VF610_ADC_TIMEOUT ;
 scalar_t__ VF610_REG_ADC_HC0 ;
 int VF610_TEMP_SLOPE_COEFF ;
 int VF610_VTEMP25_3V3 ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct vf610_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int vf610_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val,
   int *val2,
   long mask)
{
 struct vf610_adc *info = iio_priv(indio_dev);
 unsigned int hc_cfg;
 long ret;

 switch (mask) {
 case 132:
 case 133:
  mutex_lock(&indio_dev->mlock);
  if (iio_buffer_enabled(indio_dev)) {
   mutex_unlock(&indio_dev->mlock);
   return -EBUSY;
  }

  reinit_completion(&info->completion);
  hc_cfg = VF610_ADC_ADCHC(chan->channel);
  hc_cfg |= VF610_ADC_AIEN;
  writel(hc_cfg, info->regs + VF610_REG_ADC_HC0);
  ret = wait_for_completion_interruptible_timeout
    (&info->completion, VF610_ADC_TIMEOUT);
  if (ret == 0) {
   mutex_unlock(&indio_dev->mlock);
   return -ETIMEDOUT;
  }
  if (ret < 0) {
   mutex_unlock(&indio_dev->mlock);
   return ret;
  }

  switch (chan->type) {
  case 128:
   *val = info->value;
   break;
  case 129:





   *val = 25000 - ((int)info->value - VF610_VTEMP25_3V3) *
     1000000 / VF610_TEMP_SLOPE_COEFF;

   break;
  default:
   mutex_unlock(&indio_dev->mlock);
   return -EINVAL;
  }

  mutex_unlock(&indio_dev->mlock);
  return IIO_VAL_INT;

 case 130:
  *val = info->vref_uv / 1000;
  *val2 = info->adc_feature.res_mode;
  return IIO_VAL_FRACTIONAL_LOG2;

 case 131:
  *val = info->sample_freq_avail[info->adc_feature.sample_rate];
  *val2 = 0;
  return IIO_VAL_INT;

 default:
  break;
 }

 return -EINVAL;
}
