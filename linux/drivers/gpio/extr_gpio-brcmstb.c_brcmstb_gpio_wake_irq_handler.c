
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmstb_gpio_priv {int parent_wake_irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;

__attribute__((used)) static irqreturn_t brcmstb_gpio_wake_irq_handler(int irq, void *data)
{
 struct brcmstb_gpio_priv *priv = data;

 if (!priv || irq != priv->parent_wake_irq)
  return IRQ_NONE;


 return IRQ_HANDLED;
}
