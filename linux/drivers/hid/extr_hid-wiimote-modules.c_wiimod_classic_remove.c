
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * input; } ;
struct wiimote_data {TYPE_1__ extension; } ;
struct wiimod_ops {int dummy; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void wiimod_classic_remove(const struct wiimod_ops *ops,
      struct wiimote_data *wdata)
{
 if (!wdata->extension.input)
  return;

 input_unregister_device(wdata->extension.input);
 wdata->extension.input = ((void*)0);
}
