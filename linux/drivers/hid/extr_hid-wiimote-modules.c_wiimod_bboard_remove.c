
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * input; } ;
struct wiimote_data {TYPE_2__* hdev; TYPE_1__ extension; } ;
struct wiimod_ops {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int dev_attr_bboard_calib ;
 int device_remove_file (int *,int *) ;
 int input_unregister_device (int *) ;

__attribute__((used)) static void wiimod_bboard_remove(const struct wiimod_ops *ops,
     struct wiimote_data *wdata)
{
 if (!wdata->extension.input)
  return;

 input_unregister_device(wdata->extension.input);
 wdata->extension.input = ((void*)0);
 device_remove_file(&wdata->hdev->dev,
      &dev_attr_bboard_calib);
}
