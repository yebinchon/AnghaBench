
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct adp5520_leds_platform_data {int led_on_time; int fade_out; int fade_in; } ;


 int ADP5520_LED1_CURRENT ;
 int ADP5520_LED2_CURRENT ;
 int ADP5520_LED3_CURRENT ;
 int ADP5520_LED_FADE ;
 int ADP5520_LED_TIME ;
 int FADE_VAL (int ,int ) ;
 int adp5520_write (struct device*,int ,int) ;
 struct adp5520_leds_platform_data* dev_get_platdata (TYPE_1__*) ;

__attribute__((used)) static int adp5520_led_prepare(struct platform_device *pdev)
{
 struct adp5520_leds_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct device *dev = pdev->dev.parent;
 int ret = 0;

 ret |= adp5520_write(dev, ADP5520_LED1_CURRENT, 0);
 ret |= adp5520_write(dev, ADP5520_LED2_CURRENT, 0);
 ret |= adp5520_write(dev, ADP5520_LED3_CURRENT, 0);
 ret |= adp5520_write(dev, ADP5520_LED_TIME, pdata->led_on_time << 6);
 ret |= adp5520_write(dev, ADP5520_LED_FADE, FADE_VAL(pdata->fade_in,
   pdata->fade_out));

 return ret;
}
