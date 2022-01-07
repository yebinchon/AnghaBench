
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int expstate_chip ;
 int gpiochip_add_data (int *,int *) ;
 int impwire_chip ;

__attribute__((used)) static int xtensa_gpio_probe(struct platform_device *pdev)
{
 int ret;

 ret = gpiochip_add_data(&impwire_chip, ((void*)0));
 if (ret)
  return ret;
 return gpiochip_add_data(&expstate_chip, ((void*)0));
}
