
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iio_dev {int dummy; } ;
struct at91_adc_state {int ts_bufferedmeasure; int ts_prev_absx; int ts_prev_absy; scalar_t__ ts_input; TYPE_1__* registers; int ts_pendbc; int ts_sample_period_val; scalar_t__ num_channels; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int trigger_register; int status_register; } ;


 int ABS_X ;
 int ABS_Y ;
 int AT91RL_ADC_IER_NOPEN ;
 int AT91RL_ADC_IER_PEN ;
 int AT91_ADC_CHAN (struct at91_adc_state*,int) ;
 int AT91_ADC_EOC (int) ;
 int AT91_ADC_IDR ;
 int AT91_ADC_IER ;
 int AT91_ADC_IMR ;
 int AT91_ADC_MR ;
 unsigned int AT91_ADC_PENDBC ;
 unsigned int AT91_ADC_PENDBC_ (int ) ;
 int AT91_ADC_TRGR_MOD_PERIOD_TRIG ;
 int AT91_ADC_TRGR_NONE ;
 int AT91_ADC_TRGR_TRGPER_ (int ) ;
 int BTN_TOUCH ;
 int GENMASK (scalar_t__,int ) ;
 int IRQ_HANDLED ;
 int MAX_RLPOS_BITS ;
 int at91_adc_readl (struct at91_adc_state*,int ) ;
 int at91_adc_writel (struct at91_adc_state*,int ,int) ;
 int handle_adc_eoc_trigger (int,struct iio_dev*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int input_report_abs (scalar_t__,int ,int) ;
 int input_report_key (scalar_t__,int ,int) ;
 int input_sync (scalar_t__) ;

__attribute__((used)) static irqreturn_t at91_adc_rl_interrupt(int irq, void *private)
{
 struct iio_dev *idev = private;
 struct at91_adc_state *st = iio_priv(idev);
 u32 status = at91_adc_readl(st, st->registers->status_register);
 unsigned int reg;

 status &= at91_adc_readl(st, AT91_ADC_IMR);
 if (status & GENMASK(st->num_channels - 1, 0))
  handle_adc_eoc_trigger(irq, idev);

 if (status & AT91RL_ADC_IER_PEN) {

  reg = at91_adc_readl(st, AT91_ADC_MR);
  reg &= ~AT91_ADC_PENDBC;
  at91_adc_writel(st, AT91_ADC_MR, reg);

  at91_adc_writel(st, AT91_ADC_IDR, AT91RL_ADC_IER_PEN);
  at91_adc_writel(st, AT91_ADC_IER, AT91RL_ADC_IER_NOPEN
    | AT91_ADC_EOC(3));

  at91_adc_writel(st, st->registers->trigger_register,
   AT91_ADC_TRGR_MOD_PERIOD_TRIG |
   AT91_ADC_TRGR_TRGPER_(st->ts_sample_period_val));
 } else if (status & AT91RL_ADC_IER_NOPEN) {
  reg = at91_adc_readl(st, AT91_ADC_MR);
  reg |= AT91_ADC_PENDBC_(st->ts_pendbc) & AT91_ADC_PENDBC;
  at91_adc_writel(st, AT91_ADC_MR, reg);
  at91_adc_writel(st, st->registers->trigger_register,
   AT91_ADC_TRGR_NONE);

  at91_adc_writel(st, AT91_ADC_IDR, AT91RL_ADC_IER_NOPEN
    | AT91_ADC_EOC(3));
  at91_adc_writel(st, AT91_ADC_IER, AT91RL_ADC_IER_PEN);
  st->ts_bufferedmeasure = 0;
  input_report_key(st->ts_input, BTN_TOUCH, 0);
  input_sync(st->ts_input);
 } else if (status & AT91_ADC_EOC(3) && st->ts_input) {

  if (st->ts_bufferedmeasure) {





   input_report_abs(st->ts_input, ABS_X, st->ts_prev_absx);
   input_report_abs(st->ts_input, ABS_Y, st->ts_prev_absy);
   input_report_key(st->ts_input, BTN_TOUCH, 1);
   input_sync(st->ts_input);
  } else
   st->ts_bufferedmeasure = 1;


  st->ts_prev_absx = at91_adc_readl(st, AT91_ADC_CHAN(st, 3))
       << MAX_RLPOS_BITS;
  st->ts_prev_absx /= at91_adc_readl(st, AT91_ADC_CHAN(st, 2));

  st->ts_prev_absy = at91_adc_readl(st, AT91_ADC_CHAN(st, 1))
       << MAX_RLPOS_BITS;
  st->ts_prev_absy /= at91_adc_readl(st, AT91_ADC_CHAN(st, 0));
 }

 return IRQ_HANDLED;
}
