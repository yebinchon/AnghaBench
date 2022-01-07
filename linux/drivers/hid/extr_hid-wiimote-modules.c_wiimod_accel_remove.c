
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int * accel; } ;
struct wiimod_ops {int dummy; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void wiimod_accel_remove(const struct wiimod_ops *ops,
    struct wiimote_data *wdata)
{
 if (!wdata->accel)
  return;

 input_unregister_device(wdata->accel);
 wdata->accel = ((void*)0);
}
