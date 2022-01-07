
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunfire_drvdata {TYPE_1__* leds; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int led_cdev; } ;


 int NUM_LEDS_PER_BOARD ;
 int led_classdev_unregister (int *) ;
 struct sunfire_drvdata* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sunfire_led_generic_remove(struct platform_device *pdev)
{
 struct sunfire_drvdata *p = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < NUM_LEDS_PER_BOARD; i++)
  led_classdev_unregister(&p->leds[i].led_cdev);

 return 0;
}
