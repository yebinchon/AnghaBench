
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_led_classdev_register (int *,int *) ;
 int net48xx_error_led ;

__attribute__((used)) static int net48xx_led_probe(struct platform_device *pdev)
{
 return devm_led_classdev_register(&pdev->dev, &net48xx_error_led);
}
