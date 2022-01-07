
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_gpio_priv {int domain; } ;
struct platform_device {int dummy; } ;


 int irq_domain_remove (int ) ;
 struct uniphier_gpio_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int uniphier_gpio_remove(struct platform_device *pdev)
{
 struct uniphier_gpio_priv *priv = platform_get_drvdata(pdev);

 irq_domain_remove(priv->domain);

 return 0;
}
