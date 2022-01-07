
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iio_dev {int trig; } ;
struct TYPE_3__ {scalar_t__ dma_chan; } ;
struct at91_adc_state {int conversion_done; int wq_data_available; TYPE_2__* chan; void* conversion_value; TYPE_1__ dma_st; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int address; } ;


 int AT91_SAMA5D2_IER_NOPEN ;
 int AT91_SAMA5D2_IER_PEN ;
 int AT91_SAMA5D2_IER_PRDY ;
 int AT91_SAMA5D2_IER_XRDY ;
 int AT91_SAMA5D2_IER_YRDY ;
 int AT91_SAMA5D2_IMR ;
 int AT91_SAMA5D2_ISR ;
 int AT91_SAMA5D2_ISR_PENS ;
 int AT91_SAMA5D2_PRESSR ;
 int AT91_SAMA5D2_XPOSR ;
 int AT91_SAMA5D2_YPOSR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WARN (int,char*) ;
 int at91_adc_no_pen_detect_interrupt (struct at91_adc_state*) ;
 int at91_adc_pen_detect_interrupt (struct at91_adc_state*) ;
 void* at91_adc_readl (struct at91_adc_state*,int ) ;
 int at91_adc_touch_data_handler (struct iio_dev*) ;
 int disable_irq_nosync (int) ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t at91_adc_interrupt(int irq, void *private)
{
 struct iio_dev *indio = private;
 struct at91_adc_state *st = iio_priv(indio);
 u32 status = at91_adc_readl(st, AT91_SAMA5D2_ISR);
 u32 imr = at91_adc_readl(st, AT91_SAMA5D2_IMR);
 u32 rdy_mask = AT91_SAMA5D2_IER_XRDY | AT91_SAMA5D2_IER_YRDY |
   AT91_SAMA5D2_IER_PRDY;

 if (!(status & imr))
  return IRQ_NONE;
 if (status & AT91_SAMA5D2_IER_PEN) {

  at91_adc_pen_detect_interrupt(st);
 } else if ((status & AT91_SAMA5D2_IER_NOPEN)) {

  at91_adc_no_pen_detect_interrupt(st);
 } else if ((status & AT91_SAMA5D2_ISR_PENS) &&
     ((status & rdy_mask) == rdy_mask)) {

  at91_adc_touch_data_handler(indio);
 } else if (status & AT91_SAMA5D2_ISR_PENS) {




  status = at91_adc_readl(st, AT91_SAMA5D2_XPOSR);
  status = at91_adc_readl(st, AT91_SAMA5D2_YPOSR);
  status = at91_adc_readl(st, AT91_SAMA5D2_PRESSR);
 } else if (iio_buffer_enabled(indio) && !st->dma_st.dma_chan) {

  disable_irq_nosync(irq);
  iio_trigger_poll(indio->trig);
 } else if (iio_buffer_enabled(indio) && st->dma_st.dma_chan) {

  disable_irq_nosync(irq);
  WARN(1, "Unexpected irq occurred\n");
 } else if (!iio_buffer_enabled(indio)) {

  st->conversion_value = at91_adc_readl(st, st->chan->address);
  st->conversion_done = 1;
  wake_up_interruptible(&st->wq_data_available);
 }
 return IRQ_HANDLED;
}
