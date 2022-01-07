
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct adp5520_leds_platform_data {int num_leds; } ;
struct adp5520_led {int cdev; int master; } ;


 int ADP5520_LED1_EN ;
 int ADP5520_LED2_EN ;
 int ADP5520_LED3_EN ;
 int ADP5520_LED_CONTROL ;
 int adp5520_clr_bits (int ,int ,int) ;
 struct adp5520_leds_platform_data* dev_get_platdata (int *) ;
 int led_classdev_unregister (int *) ;
 struct adp5520_led* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int adp5520_led_remove(struct platform_device *pdev)
{
 struct adp5520_leds_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct adp5520_led *led;
 int i;

 led = platform_get_drvdata(pdev);

 adp5520_clr_bits(led->master, ADP5520_LED_CONTROL,
   ADP5520_LED1_EN | ADP5520_LED2_EN | ADP5520_LED3_EN);

 for (i = 0; i < pdata->num_leds; i++) {
  led_classdev_unregister(&led[i].cdev);
 }

 return 0;
}
