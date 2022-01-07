
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmstb_gpio_priv {TYPE_1__* pdev; int parent_wake_irq; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,char*) ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;

__attribute__((used)) static int brcmstb_gpio_priv_set_wake(struct brcmstb_gpio_priv *priv,
  unsigned int enable)
{
 int ret = 0;

 if (enable)
  ret = enable_irq_wake(priv->parent_wake_irq);
 else
  ret = disable_irq_wake(priv->parent_wake_irq);
 if (ret)
  dev_err(&priv->pdev->dev, "failed to %s wake-up interrupt\n",
    enable ? "enable" : "disable");
 return ret;
}
