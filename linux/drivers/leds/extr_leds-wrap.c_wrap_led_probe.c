
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_led_classdev_register (int *,int *) ;
 int wrap_error_led ;
 int wrap_extra_led ;
 int wrap_power_led ;

__attribute__((used)) static int wrap_led_probe(struct platform_device *pdev)
{
 int ret;

 ret = devm_led_classdev_register(&pdev->dev, &wrap_power_led);
 if (ret < 0)
  return ret;

 ret = devm_led_classdev_register(&pdev->dev, &wrap_error_led);
 if (ret < 0)
  return ret;

 return devm_led_classdev_register(&pdev->dev, &wrap_extra_led);
}
