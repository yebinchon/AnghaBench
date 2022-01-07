
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int has_key_backlight; } ;


 int ENOMEM ;
 int applesmc_backlight ;
 int applesmc_led_wq ;
 int create_singlethread_workqueue (char*) ;
 int led_classdev_register (int *,int *) ;
 TYPE_2__* pdev ;
 TYPE_1__ smcreg ;

__attribute__((used)) static int applesmc_create_key_backlight(void)
{
 if (!smcreg.has_key_backlight)
  return 0;
 applesmc_led_wq = create_singlethread_workqueue("applesmc-led");
 if (!applesmc_led_wq)
  return -ENOMEM;
 return led_classdev_register(&pdev->dev, &applesmc_backlight);
}
