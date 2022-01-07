
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int masklength; int trig; struct iio_chan_spec* channels; int active_scan_mask; } ;
struct iio_chan_spec {int channel; } ;
struct at91_adc_state {int irq; int * buffer; } ;
typedef int irqreturn_t ;


 int AT91_ADC_CHAN (struct at91_adc_state*,int ) ;
 int AT91_ADC_LCDR ;
 int IRQ_HANDLED ;
 int at91_adc_readl (struct at91_adc_state*,int ) ;
 int enable_irq (int ) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *idev = pf->indio_dev;
 struct at91_adc_state *st = iio_priv(idev);
 struct iio_chan_spec const *chan;
 int i, j = 0;

 for (i = 0; i < idev->masklength; i++) {
  if (!test_bit(i, idev->active_scan_mask))
   continue;
  chan = idev->channels + i;
  st->buffer[j] = at91_adc_readl(st, AT91_ADC_CHAN(st, chan->channel));
  j++;
 }

 iio_push_to_buffers_with_timestamp(idev, st->buffer, pf->timestamp);

 iio_trigger_notify_done(idev->trig);


 at91_adc_readl(st, AT91_ADC_LCDR);

 enable_irq(st->irq);

 return IRQ_HANDLED;
}
