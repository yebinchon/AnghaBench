
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vf50_touch_device {TYPE_1__* pdev; int gpio_ym; } ;
struct TYPE_2__ {int dev; } ;


 int COLI_PULLUP_MAX_DELAY_US ;
 int COLI_PULLUP_MIN_DELAY_US ;
 int gpiod_set_value (int ,int) ;
 int pinctrl_pm_select_idle_state (int *) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static void vf50_ts_enable_touch_detection(struct vf50_touch_device *vf50_ts)
{

 gpiod_set_value(vf50_ts->gpio_ym, 1);





 pinctrl_pm_select_idle_state(&vf50_ts->pdev->dev);


 usleep_range(COLI_PULLUP_MIN_DELAY_US, COLI_PULLUP_MAX_DELAY_US);
}
