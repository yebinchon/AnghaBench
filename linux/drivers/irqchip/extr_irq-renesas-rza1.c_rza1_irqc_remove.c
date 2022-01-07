
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rza1_irqc_priv {int irq_domain; } ;
struct platform_device {int dummy; } ;


 int irq_domain_remove (int ) ;
 struct rza1_irqc_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rza1_irqc_remove(struct platform_device *pdev)
{
 struct rza1_irqc_priv *priv = platform_get_drvdata(pdev);

 irq_domain_remove(priv->irq_domain);
 return 0;
}
