
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int led_classdev_unregister (int *) ;
 int rb532_uled ;

__attribute__((used)) static int rb532_led_remove(struct platform_device *pdev)
{
 led_classdev_unregister(&rb532_uled);
 return 0;
}
