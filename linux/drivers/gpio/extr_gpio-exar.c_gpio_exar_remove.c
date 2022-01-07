
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct exar_gpio_chip {int lock; int index; } ;


 int ida_index ;
 int ida_simple_remove (int *,int ) ;
 int mutex_destroy (int *) ;
 struct exar_gpio_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gpio_exar_remove(struct platform_device *pdev)
{
 struct exar_gpio_chip *exar_gpio = platform_get_drvdata(pdev);

 ida_simple_remove(&ida_index, exar_gpio->index);
 mutex_destroy(&exar_gpio->lock);

 return 0;
}
