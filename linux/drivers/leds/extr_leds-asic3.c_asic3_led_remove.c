
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct asic3_led {int cdev; } ;


 struct asic3_led* dev_get_platdata (int *) ;
 int led_classdev_unregister (int ) ;
 int mfd_cell_disable (struct platform_device*) ;

__attribute__((used)) static int asic3_led_remove(struct platform_device *pdev)
{
 struct asic3_led *led = dev_get_platdata(&pdev->dev);

 led_classdev_unregister(led->cdev);

 return mfd_cell_disable(pdev);
}
