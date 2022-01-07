
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int battery_dev; } ;


 int platform_device_unregister (int ) ;

__attribute__((used)) static void wm97xx_remove_battery(struct wm97xx *wm)
{
 platform_device_unregister(wm->battery_dev);
}
