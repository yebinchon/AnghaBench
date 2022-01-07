
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct irq_domain {struct brcmstb_gpio_priv* host_data; } ;
struct brcmstb_gpio_priv {int irq_chip; struct platform_device* pdev; } ;
struct brcmstb_gpio_bank {int gc; int id; } ;
typedef scalar_t__ irq_hw_number_t ;


 int EINVAL ;
 struct brcmstb_gpio_bank* brcmstb_gpio_hwirq_to_bank (struct brcmstb_gpio_priv*,scalar_t__) ;
 int brcmstb_gpio_irq_lock_class ;
 int brcmstb_gpio_irq_request_class ;
 int dev_dbg (int *,char*,unsigned int,int,int ) ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int *) ;
 int irq_set_lockdep_class (unsigned int,int *,int *) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static int brcmstb_gpio_irq_map(struct irq_domain *d, unsigned int irq,
  irq_hw_number_t hwirq)
{
 struct brcmstb_gpio_priv *priv = d->host_data;
 struct brcmstb_gpio_bank *bank =
  brcmstb_gpio_hwirq_to_bank(priv, hwirq);
 struct platform_device *pdev = priv->pdev;
 int ret;

 if (!bank)
  return -EINVAL;

 dev_dbg(&pdev->dev, "Mapping irq %d for gpio line %d (bank %d)\n",
  irq, (int)hwirq, bank->id);
 ret = irq_set_chip_data(irq, &bank->gc);
 if (ret < 0)
  return ret;
 irq_set_lockdep_class(irq, &brcmstb_gpio_irq_lock_class,
         &brcmstb_gpio_irq_request_class);
 irq_set_chip_and_handler(irq, &priv->irq_chip, handle_level_irq);
 irq_set_noprobe(irq);
 return 0;
}
