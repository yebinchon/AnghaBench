
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct iio_dev {int dummy; } ;
struct at91_adc_state {int ts_input; TYPE_1__* registers; int ts_sample_period_val; scalar_t__ num_channels; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int trigger_register; int status_register; } ;


 int AT91_ADC_IDR ;
 int AT91_ADC_IER ;
 int const AT91_ADC_IER_NOPEN ;
 int AT91_ADC_IER_PEN ;
 int AT91_ADC_IER_PRDY ;
 int AT91_ADC_IER_XRDY ;
 int AT91_ADC_IER_YRDY ;
 int AT91_ADC_ISR_PENS ;
 int AT91_ADC_TRGR_MOD_PERIOD_TRIG ;
 int AT91_ADC_TRGR_TRGPER_ (int ) ;
 int AT91_ADC_TSPRESSR ;
 int AT91_ADC_TSXPOSR ;
 int AT91_ADC_TSYPOSR ;
 int BTN_TOUCH ;
 int GENMASK (scalar_t__,int ) ;
 int IRQ_HANDLED ;
 int at91_adc_readl (struct at91_adc_state*,int ) ;
 int at91_adc_writel (struct at91_adc_state*,int ,int const) ;
 int at91_ts_sample (struct at91_adc_state*) ;
 int handle_adc_eoc_trigger (int,struct iio_dev*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t at91_adc_9x5_interrupt(int irq, void *private)
{
 struct iio_dev *idev = private;
 struct at91_adc_state *st = iio_priv(idev);
 u32 status = at91_adc_readl(st, st->registers->status_register);
 const uint32_t ts_data_irq_mask =
  AT91_ADC_IER_XRDY |
  AT91_ADC_IER_YRDY |
  AT91_ADC_IER_PRDY;

 if (status & GENMASK(st->num_channels - 1, 0))
  handle_adc_eoc_trigger(irq, idev);

 if (status & AT91_ADC_IER_PEN) {
  at91_adc_writel(st, AT91_ADC_IDR, AT91_ADC_IER_PEN);
  at91_adc_writel(st, AT91_ADC_IER, AT91_ADC_IER_NOPEN |
   ts_data_irq_mask);

  at91_adc_writel(st, st->registers->trigger_register,
   AT91_ADC_TRGR_MOD_PERIOD_TRIG |
   AT91_ADC_TRGR_TRGPER_(st->ts_sample_period_val));
 } else if (status & AT91_ADC_IER_NOPEN) {
  at91_adc_writel(st, st->registers->trigger_register, 0);
  at91_adc_writel(st, AT91_ADC_IDR, AT91_ADC_IER_NOPEN |
   ts_data_irq_mask);
  at91_adc_writel(st, AT91_ADC_IER, AT91_ADC_IER_PEN);

  input_report_key(st->ts_input, BTN_TOUCH, 0);
  input_sync(st->ts_input);
 } else if ((status & ts_data_irq_mask) == ts_data_irq_mask) {


  if (status & AT91_ADC_ISR_PENS) {

   at91_ts_sample(st);
  } else {



   at91_adc_readl(st, AT91_ADC_TSXPOSR);
   at91_adc_readl(st, AT91_ADC_TSYPOSR);
   at91_adc_readl(st, AT91_ADC_TSPRESSR);
  }
 }

 return IRQ_HANDLED;
}
