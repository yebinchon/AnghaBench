
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_adc_priv {int regmap; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IPROC_ADC_INTR ;
 int IPROC_ADC_INTR_MASK ;
 int IPROC_INTERRUPT_MASK ;
 int IPROC_INTERRUPT_STATUS ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 struct iproc_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t iproc_adc_interrupt_thread(int irq, void *data)
{
 u32 channel_intr_status;
 u32 intr_status;
 u32 intr_mask;
 struct iio_dev *indio_dev = data;
 struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);






 regmap_read(adc_priv->regmap, IPROC_INTERRUPT_STATUS, &intr_status);
 regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &intr_mask);
 intr_status = intr_status & intr_mask;
 channel_intr_status = (intr_status & IPROC_ADC_INTR_MASK) >>
    IPROC_ADC_INTR;
 if (channel_intr_status)
  return IRQ_WAKE_THREAD;

 return IRQ_NONE;
}
