
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int GPIO_MOCKUP_MAX_GC ;
 struct platform_device** gpio_mockup_pdevs ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static void gpio_mockup_unregister_pdevs(void)
{
 struct platform_device *pdev;
 int i;

 for (i = 0; i < GPIO_MOCKUP_MAX_GC; i++) {
  pdev = gpio_mockup_pdevs[i];

  if (pdev)
   platform_device_unregister(pdev);
 }
}
