
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_adc_priv {int* irq; int domain; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 unsigned int STM32_ADC_MAX_ADCS ;
 int dev_err (TYPE_1__*,char*) ;
 int irq_domain_add_simple (struct device_node*,unsigned int,int ,int *,struct stm32_adc_priv*) ;
 int irq_set_chained_handler (int,int ) ;
 int irq_set_handler_data (int,struct stm32_adc_priv*) ;
 int platform_get_irq (struct platform_device*,unsigned int) ;
 int stm32_adc_domain_ops ;
 int stm32_adc_irq_handler ;

__attribute__((used)) static int stm32_adc_irq_probe(struct platform_device *pdev,
          struct stm32_adc_priv *priv)
{
 struct device_node *np = pdev->dev.of_node;
 unsigned int i;

 for (i = 0; i < STM32_ADC_MAX_ADCS; i++) {
  priv->irq[i] = platform_get_irq(pdev, i);
  if (priv->irq[i] < 0) {







   if (i && priv->irq[i] == -ENXIO)
    continue;

   return priv->irq[i];
  }
 }

 priv->domain = irq_domain_add_simple(np, STM32_ADC_MAX_ADCS, 0,
          &stm32_adc_domain_ops,
          priv);
 if (!priv->domain) {
  dev_err(&pdev->dev, "Failed to add irq domain\n");
  return -ENOMEM;
 }

 for (i = 0; i < STM32_ADC_MAX_ADCS; i++) {
  if (priv->irq[i] < 0)
   continue;
  irq_set_chained_handler(priv->irq[i], stm32_adc_irq_handler);
  irq_set_handler_data(priv->irq[i], priv);
 }

 return 0;
}
