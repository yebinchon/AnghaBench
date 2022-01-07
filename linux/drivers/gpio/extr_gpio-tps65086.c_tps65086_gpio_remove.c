
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65086_gpio {int chip; } ;
struct platform_device {int dummy; } ;


 int gpiochip_remove (int *) ;
 struct tps65086_gpio* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tps65086_gpio_remove(struct platform_device *pdev)
{
 struct tps65086_gpio *gpio = platform_get_drvdata(pdev);

 gpiochip_remove(&gpio->chip);

 return 0;
}
