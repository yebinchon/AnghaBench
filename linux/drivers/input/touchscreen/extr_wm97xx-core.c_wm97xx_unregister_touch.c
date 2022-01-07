
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int * input_dev; int touch_dev; } ;


 int input_unregister_device (int *) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static void wm97xx_unregister_touch(struct wm97xx *wm)
{
 platform_device_unregister(wm->touch_dev);
 input_unregister_device(wm->input_dev);
 wm->input_dev = ((void*)0);
}
