
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int trig; } ;
struct at91_adc_state {int done; int wq_data_avail; int chnb; int last_value; } ;


 int AT91_ADC_CHAN (struct at91_adc_state*,int ) ;
 int AT91_ADC_LCDR ;
 int at91_adc_readl (struct at91_adc_state*,int ) ;
 int disable_irq_nosync (int) ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void handle_adc_eoc_trigger(int irq, struct iio_dev *idev)
{
 struct at91_adc_state *st = iio_priv(idev);

 if (iio_buffer_enabled(idev)) {
  disable_irq_nosync(irq);
  iio_trigger_poll(idev->trig);
 } else {
  st->last_value = at91_adc_readl(st, AT91_ADC_CHAN(st, st->chnb));

  at91_adc_readl(st, AT91_ADC_LCDR);
  st->done = 1;
  wake_up_interruptible(&st->wq_data_avail);
 }
}
