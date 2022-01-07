
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int channel; } ;
struct at91_adc_state {int done; int last_value; int vref_mv; int lock; int wq_data_avail; int chnb; } ;


 int AT91_ADC_CH (int ) ;
 int AT91_ADC_CHDR ;
 int AT91_ADC_CHER ;
 int AT91_ADC_CR ;
 int AT91_ADC_IDR ;
 int AT91_ADC_IER ;
 int AT91_ADC_START ;
 int BIT (int ) ;
 int EINVAL ;
 int ETIMEDOUT ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int at91_adc_writel (struct at91_adc_state*,int ,int ) ;
 int dev_err (int *,char*,int ) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int at91_adc_read_raw(struct iio_dev *idev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct at91_adc_state *st = iio_priv(idev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&st->lock);

  st->chnb = chan->channel;
  at91_adc_writel(st, AT91_ADC_CHER,
    AT91_ADC_CH(chan->channel));
  at91_adc_writel(st, AT91_ADC_IER, BIT(chan->channel));
  at91_adc_writel(st, AT91_ADC_CR, AT91_ADC_START);

  ret = wait_event_interruptible_timeout(st->wq_data_avail,
             st->done,
             msecs_to_jiffies(1000));




  at91_adc_writel(st, AT91_ADC_CHDR,
    AT91_ADC_CH(chan->channel));
  at91_adc_writel(st, AT91_ADC_IDR, BIT(chan->channel));

  if (ret > 0) {

   *val = st->last_value;
   st->last_value = 0;
   st->done = 0;
   ret = IIO_VAL_INT;
  } else if (ret == 0) {

   dev_err(&idev->dev, "ADC Channel %d timeout.\n",
    chan->channel);
   ret = -ETIMEDOUT;
  }

  mutex_unlock(&st->lock);
  return ret;

 case 128:
  *val = st->vref_mv;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  break;
 }
 return -EINVAL;
}
