
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_6__ {int * input; } ;
struct wiimote_data {TYPE_2__ state; TYPE_1__* hdev; int rumble_worker; TYPE_3__ extension; } ;
struct wiimod_ops {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int cancel_work_sync (int *) ;
 int dev_attr_pro_calib ;
 int device_remove_file (int *,int *) ;
 int input_unregister_device (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiiproto_req_rumble (struct wiimote_data*,int ) ;

__attribute__((used)) static void wiimod_pro_remove(const struct wiimod_ops *ops,
         struct wiimote_data *wdata)
{
 unsigned long flags;

 if (!wdata->extension.input)
  return;

 input_unregister_device(wdata->extension.input);
 wdata->extension.input = ((void*)0);
 cancel_work_sync(&wdata->rumble_worker);
 device_remove_file(&wdata->hdev->dev,
      &dev_attr_pro_calib);

 spin_lock_irqsave(&wdata->state.lock, flags);
 wiiproto_req_rumble(wdata, 0);
 spin_unlock_irqrestore(&wdata->state.lock, flags);
}
