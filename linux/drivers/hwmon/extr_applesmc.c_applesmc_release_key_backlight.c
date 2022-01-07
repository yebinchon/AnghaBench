
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_key_backlight; } ;


 int applesmc_backlight ;
 int applesmc_led_wq ;
 int destroy_workqueue (int ) ;
 int led_classdev_unregister (int *) ;
 TYPE_1__ smcreg ;

__attribute__((used)) static void applesmc_release_key_backlight(void)
{
 if (!smcreg.has_key_backlight)
  return;
 led_classdev_unregister(&applesmc_backlight);
 destroy_workqueue(applesmc_led_wq);
}
