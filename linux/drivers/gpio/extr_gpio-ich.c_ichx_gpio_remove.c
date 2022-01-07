
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int chip; } ;


 int gpiochip_remove (int *) ;
 TYPE_1__ ichx_priv ;

__attribute__((used)) static int ichx_gpio_remove(struct platform_device *pdev)
{
 gpiochip_remove(&ichx_priv.chip);

 return 0;
}
