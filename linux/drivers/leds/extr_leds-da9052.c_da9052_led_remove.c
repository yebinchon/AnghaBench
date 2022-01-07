
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct led_platform_data {int num_leds; } ;
struct da9052_pdata {struct led_platform_data* pled; } ;
struct da9052_led {int cdev; } ;
struct da9052 {int dev; } ;


 int LED_OFF ;
 int da9052_set_led_brightness (struct da9052_led*,int ) ;
 struct da9052* dev_get_drvdata (int ) ;
 struct da9052_pdata* dev_get_platdata (int ) ;
 int led_classdev_unregister (int *) ;
 struct da9052_led* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int da9052_led_remove(struct platform_device *pdev)
{
 struct da9052_led *led = platform_get_drvdata(pdev);
 struct da9052_pdata *pdata;
 struct da9052 *da9052;
 struct led_platform_data *pled;
 int i;

 da9052 = dev_get_drvdata(pdev->dev.parent);
 pdata = dev_get_platdata(da9052->dev);
 pled = pdata->pled;

 for (i = 0; i < pled->num_leds; i++) {
  da9052_set_led_brightness(&led[i], LED_OFF);
  led_classdev_unregister(&led[i].cdev);
 }

 return 0;
}
