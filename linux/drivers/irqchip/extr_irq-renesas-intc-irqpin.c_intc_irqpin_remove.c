
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intc_irqpin_priv {int irq_domain; } ;


 int irq_domain_remove (int ) ;
 struct intc_irqpin_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static int intc_irqpin_remove(struct platform_device *pdev)
{
 struct intc_irqpin_priv *p = platform_get_drvdata(pdev);

 irq_domain_remove(p->irq_domain);
 pm_runtime_put(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 return 0;
}
