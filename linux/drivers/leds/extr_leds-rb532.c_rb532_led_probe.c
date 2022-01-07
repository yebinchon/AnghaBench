
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int led_classdev_register (int *,int *) ;
 int rb532_uled ;

__attribute__((used)) static int rb532_led_probe(struct platform_device *pdev)
{
 return led_classdev_register(&pdev->dev, &rb532_uled);
}
