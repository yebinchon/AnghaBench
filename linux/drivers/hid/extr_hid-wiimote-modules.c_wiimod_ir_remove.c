
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int * ir; } ;
struct wiimod_ops {int dummy; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void wiimod_ir_remove(const struct wiimod_ops *ops,
        struct wiimote_data *wdata)
{
 if (!wdata->ir)
  return;

 input_unregister_device(wdata->ir);
 wdata->ir = ((void*)0);
}
