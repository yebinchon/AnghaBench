
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_led_common {int led_disabled; int lock; } ;
struct platform_device {int dev; } ;


 int dev_info (int *,char*) ;
 int mutex_destroy (int *) ;
 struct powernv_led_common* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int powernv_led_remove(struct platform_device *pdev)
{
 struct powernv_led_common *powernv_led_common;


 powernv_led_common = platform_get_drvdata(pdev);
 powernv_led_common->led_disabled = 1;


 mutex_destroy(&powernv_led_common->lock);

 dev_info(&pdev->dev, "PowerNV led module unregistered\n");
 return 0;
}
