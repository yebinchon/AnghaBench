
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct npcm_adc {int int_status; int wq; scalar_t__ regs; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ NPCM_ADCCON ;
 int NPCM_ADCCON_ADC_INT_ST ;
 struct npcm_adc* iio_priv (struct iio_dev*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t npcm_adc_isr(int irq, void *data)
{
 u32 regtemp;
 struct iio_dev *indio_dev = data;
 struct npcm_adc *info = iio_priv(indio_dev);

 regtemp = ioread32(info->regs + NPCM_ADCCON);
 if (regtemp & NPCM_ADCCON_ADC_INT_ST) {
  iowrite32(regtemp, info->regs + NPCM_ADCCON);
  wake_up_interruptible(&info->wq);
  info->int_status = 1;
 }

 return IRQ_HANDLED;
}
