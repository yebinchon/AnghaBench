
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_led {int cdev; } ;
struct platform_device {int dummy; } ;


 int led_classdev_unregister (int *) ;
 struct wm8350_led* platform_get_drvdata (struct platform_device*) ;
 int wm8350_led_disable (struct wm8350_led*) ;

__attribute__((used)) static int wm8350_led_remove(struct platform_device *pdev)
{
 struct wm8350_led *led = platform_get_drvdata(pdev);

 led_classdev_unregister(&led->cdev);
 wm8350_led_disable(led);
 return 0;
}
