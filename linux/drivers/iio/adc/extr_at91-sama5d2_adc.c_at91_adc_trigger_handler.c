
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct TYPE_2__ {scalar_t__ dma_chan; } ;
struct at91_adc_state {TYPE_1__ dma_st; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int at91_adc_trigger_handler_dma (struct iio_dev*) ;
 int at91_adc_trigger_handler_nodma (struct iio_dev*,struct iio_poll_func*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int iio_trigger_notify_done (int ) ;

__attribute__((used)) static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct at91_adc_state *st = iio_priv(indio_dev);

 if (st->dma_st.dma_chan)
  at91_adc_trigger_handler_dma(indio_dev);
 else
  at91_adc_trigger_handler_nodma(indio_dev, pf);

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
