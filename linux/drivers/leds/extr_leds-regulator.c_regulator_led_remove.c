
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_led {int cdev; } ;
struct platform_device {int dummy; } ;


 int led_classdev_unregister (int *) ;
 struct regulator_led* platform_get_drvdata (struct platform_device*) ;
 int regulator_led_disable (struct regulator_led*) ;

__attribute__((used)) static int regulator_led_remove(struct platform_device *pdev)
{
 struct regulator_led *led = platform_get_drvdata(pdev);

 led_classdev_unregister(&led->cdev);
 regulator_led_disable(led);
 return 0;
}
