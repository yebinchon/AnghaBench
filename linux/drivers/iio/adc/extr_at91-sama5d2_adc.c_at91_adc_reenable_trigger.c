
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma_chan; } ;
struct at91_adc_state {int irq; TYPE_1__ dma_st; } ;


 int AT91_SAMA5D2_LCDR ;
 int at91_adc_readl (struct at91_adc_state*,int ) ;
 int enable_irq (int ) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int at91_adc_reenable_trigger(struct iio_trigger *trig)
{
 struct iio_dev *indio = iio_trigger_get_drvdata(trig);
 struct at91_adc_state *st = iio_priv(indio);


 if (st->dma_st.dma_chan)
  return 0;

 enable_irq(st->irq);


 at91_adc_readl(st, AT91_SAMA5D2_LCDR);
 return 0;
}
