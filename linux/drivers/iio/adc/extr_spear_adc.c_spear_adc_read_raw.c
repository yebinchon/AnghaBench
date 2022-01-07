
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_adc_state {int vref_external; int value; int current_clk; int completion; int avg_samples; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int SPEAR_ADC_DATA_BITS ;
 int SPEAR_ADC_STATUS_ADC_ENABLE ;
 int SPEAR_ADC_STATUS_AVG_SAMPLE (int ) ;
 int SPEAR_ADC_STATUS_CHANNEL_NUM (int ) ;
 int SPEAR_ADC_STATUS_START_CONVERSION ;
 int SPEAR_ADC_STATUS_VREF_INTERNAL ;
 struct spear_adc_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spear_adc_set_status (struct spear_adc_state*,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int spear_adc_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val,
         int *val2,
         long mask)
{
 struct spear_adc_state *st = iio_priv(indio_dev);
 u32 status;

 switch (mask) {
 case 130:
  mutex_lock(&indio_dev->mlock);

  status = SPEAR_ADC_STATUS_CHANNEL_NUM(chan->channel) |
   SPEAR_ADC_STATUS_AVG_SAMPLE(st->avg_samples) |
   SPEAR_ADC_STATUS_START_CONVERSION |
   SPEAR_ADC_STATUS_ADC_ENABLE;
  if (st->vref_external == 0)
   status |= SPEAR_ADC_STATUS_VREF_INTERNAL;

  spear_adc_set_status(st, status);
  wait_for_completion(&st->completion);
  *val = st->value;

  mutex_unlock(&indio_dev->mlock);

  return IIO_VAL_INT;

 case 128:
  *val = st->vref_external;
  *val2 = SPEAR_ADC_DATA_BITS;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 129:
  *val = st->current_clk;
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
