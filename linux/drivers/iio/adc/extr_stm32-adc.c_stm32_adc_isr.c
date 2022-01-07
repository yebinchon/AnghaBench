
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mask; int reg; } ;
struct stm32_adc_regspec {int dr; TYPE_2__ isr_eoc; } ;
struct stm32_adc {size_t bufi; size_t num_conv; int completion; int * buffer; TYPE_1__* cfg; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct stm32_adc_regspec* regs; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct iio_dev* iio_priv_to_dev (struct stm32_adc*) ;
 int iio_trigger_poll (int ) ;
 int stm32_adc_conv_irq_disable (struct stm32_adc*) ;
 int stm32_adc_readl (struct stm32_adc*,int ) ;
 int stm32_adc_readw (struct stm32_adc*,int ) ;

__attribute__((used)) static irqreturn_t stm32_adc_isr(int irq, void *data)
{
 struct stm32_adc *adc = data;
 struct iio_dev *indio_dev = iio_priv_to_dev(adc);
 const struct stm32_adc_regspec *regs = adc->cfg->regs;
 u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);

 if (status & regs->isr_eoc.mask) {

  adc->buffer[adc->bufi] = stm32_adc_readw(adc, regs->dr);
  if (iio_buffer_enabled(indio_dev)) {
   adc->bufi++;
   if (adc->bufi >= adc->num_conv) {
    stm32_adc_conv_irq_disable(adc);
    iio_trigger_poll(indio_dev->trig);
   }
  } else {
   complete(&adc->completion);
  }
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
