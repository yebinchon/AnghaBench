
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int * mp; } ;
struct wiimod_ops {int dummy; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void wiimod_mp_remove(const struct wiimod_ops *ops,
        struct wiimote_data *wdata)
{
 if (!wdata->mp)
  return;

 input_unregister_device(wdata->mp);
 wdata->mp = ((void*)0);
}
