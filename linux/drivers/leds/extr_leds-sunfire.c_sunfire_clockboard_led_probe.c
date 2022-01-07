
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int clockboard_led_types ;
 int sunfire_led_generic_probe (struct platform_device*,int ) ;

__attribute__((used)) static int sunfire_clockboard_led_probe(struct platform_device *pdev)
{
 return sunfire_led_generic_probe(pdev, clockboard_led_types);
}
