
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_led_classdev_register (int *,int *) ;
 int hp6xx_green_led ;
 int hp6xx_red_led ;

__attribute__((used)) static int hp6xxled_probe(struct platform_device *pdev)
{
 int ret;

 ret = devm_led_classdev_register(&pdev->dev, &hp6xx_red_led);
 if (ret < 0)
  return ret;

 return devm_led_classdev_register(&pdev->dev, &hp6xx_green_led);
}
