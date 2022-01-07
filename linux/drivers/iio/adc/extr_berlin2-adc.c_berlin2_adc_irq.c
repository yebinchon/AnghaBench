
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct berlin2_adc_priv {unsigned int data; int data_available; int wq; int regmap; } ;
typedef int irqreturn_t ;


 int BERLIN2_SM_ADC_DATA ;
 unsigned int BERLIN2_SM_ADC_MASK ;
 int BERLIN2_SM_ADC_STATUS ;
 unsigned int BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK ;
 int IRQ_HANDLED ;
 struct berlin2_adc_priv* iio_priv (void*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t berlin2_adc_irq(int irq, void *private)
{
 struct berlin2_adc_priv *priv = iio_priv(private);
 unsigned val;

 regmap_read(priv->regmap, BERLIN2_SM_ADC_STATUS, &val);
 if (val & BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK) {
  regmap_read(priv->regmap, BERLIN2_SM_ADC_DATA, &priv->data);
  priv->data &= BERLIN2_SM_ADC_MASK;

  val &= ~BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK;
  regmap_write(priv->regmap, BERLIN2_SM_ADC_STATUS, val);

  priv->data_available = 1;
  wake_up_interruptible(&priv->wq);
 }

 return IRQ_HANDLED;
}
