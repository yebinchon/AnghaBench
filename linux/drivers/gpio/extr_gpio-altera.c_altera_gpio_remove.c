
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct altera_gpio_chip {int mmchip; } ;


 int of_mm_gpiochip_remove (int *) ;
 struct altera_gpio_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int altera_gpio_remove(struct platform_device *pdev)
{
 struct altera_gpio_chip *altera_gc = platform_get_drvdata(pdev);

 of_mm_gpiochip_remove(&altera_gc->mmchip);

 return 0;
}
