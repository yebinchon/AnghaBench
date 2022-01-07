
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_gpio_chip {int gc; } ;
struct platform_device {int dummy; } ;


 int gpiochip_remove (int *) ;
 struct pt_gpio_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pt_gpio_remove(struct platform_device *pdev)
{
 struct pt_gpio_chip *pt_gpio = platform_get_drvdata(pdev);

 gpiochip_remove(&pt_gpio->gc);

 return 0;
}
