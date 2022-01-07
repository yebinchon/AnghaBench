
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpio_rcar_priv {int gpio_chip; } ;


 int gpiochip_remove (int *) ;
 struct gpio_rcar_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int gpio_rcar_remove(struct platform_device *pdev)
{
 struct gpio_rcar_priv *p = platform_get_drvdata(pdev);

 gpiochip_remove(&p->gpio_chip);

 pm_runtime_disable(&pdev->dev);
 return 0;
}
