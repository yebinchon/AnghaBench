
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int devm_led_classdev_register (int *,int *) ;
 int micro_led ;

__attribute__((used)) static int micro_leds_probe(struct platform_device *pdev)
{
 int ret;

 ret = devm_led_classdev_register(&pdev->dev, &micro_led);
 if (ret) {
  dev_err(&pdev->dev, "registering led failed: %d\n", ret);
  return ret;
 }
 dev_info(&pdev->dev, "iPAQ micro notification LED driver\n");

 return 0;
}
