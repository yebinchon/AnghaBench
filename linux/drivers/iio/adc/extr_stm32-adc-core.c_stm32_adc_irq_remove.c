
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adc_priv {scalar_t__* irq; int domain; } ;
struct platform_device {int dummy; } ;


 int STM32_ADC_MAX_ADCS ;
 int irq_dispose_mapping (int ) ;
 int irq_domain_remove (int ) ;
 int irq_find_mapping (int ,int) ;
 int irq_set_chained_handler (scalar_t__,int *) ;

__attribute__((used)) static void stm32_adc_irq_remove(struct platform_device *pdev,
     struct stm32_adc_priv *priv)
{
 int hwirq;
 unsigned int i;

 for (hwirq = 0; hwirq < STM32_ADC_MAX_ADCS; hwirq++)
  irq_dispose_mapping(irq_find_mapping(priv->domain, hwirq));
 irq_domain_remove(priv->domain);

 for (i = 0; i < STM32_ADC_MAX_ADCS; i++) {
  if (priv->irq[i] < 0)
   continue;
  irq_set_chained_handler(priv->irq[i], ((void*)0));
 }
}
