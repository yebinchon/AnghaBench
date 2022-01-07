
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pdc_intc_priv {int domain; } ;


 int irq_domain_remove (int ) ;
 struct pdc_intc_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pdc_intc_remove(struct platform_device *pdev)
{
 struct pdc_intc_priv *priv = platform_get_drvdata(pdev);

 irq_domain_remove(priv->domain);
 return 0;
}
