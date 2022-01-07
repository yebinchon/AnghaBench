
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int bios_detach () ;
 int input_free_polled_device (int ) ;
 int input_unregister_polled_device (int ) ;
 int wistron_idev ;
 int wistron_led_remove () ;

__attribute__((used)) static int wistron_remove(struct platform_device *dev)
{
 wistron_led_remove();
 input_unregister_polled_device(wistron_idev);
 input_free_polled_device(wistron_idev);
 bios_detach();

 return 0;
}
