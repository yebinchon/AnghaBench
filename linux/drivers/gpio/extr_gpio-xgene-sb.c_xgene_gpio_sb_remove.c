
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_gpio_sb {scalar_t__ nirq; int irq_domain; int gc; } ;
struct platform_device {int dummy; } ;


 int acpi_gpiochip_free_interrupts (int *) ;
 int irq_domain_remove (int ) ;
 struct xgene_gpio_sb* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xgene_gpio_sb_remove(struct platform_device *pdev)
{
 struct xgene_gpio_sb *priv = platform_get_drvdata(pdev);

 if (priv->nirq > 0) {
  acpi_gpiochip_free_interrupts(&priv->gc);
 }

 irq_domain_remove(priv->irq_domain);

 return 0;
}
