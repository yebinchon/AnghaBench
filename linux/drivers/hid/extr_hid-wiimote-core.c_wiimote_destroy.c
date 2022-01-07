
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int worker; } ;
struct TYPE_5__ {int lock; int flags; } ;
struct wiimote_data {TYPE_3__* hdev; TYPE_2__ queue; int timer; int init_worker; TYPE_1__ state; } ;
struct TYPE_7__ {int dev; } ;


 int WIIPROTO_FLAG_EXITING ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int dev_attr_devtype ;
 int dev_attr_extension ;
 int device_remove_file (int *,int *) ;
 int hid_hw_close (TYPE_3__*) ;
 int hid_hw_stop (TYPE_3__*) ;
 int kfree (struct wiimote_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiidebug_deinit (struct wiimote_data*) ;
 int wiimote_ext_unload (struct wiimote_data*) ;
 int wiimote_modules_unload (struct wiimote_data*) ;
 int wiimote_mp_unload (struct wiimote_data*) ;

__attribute__((used)) static void wiimote_destroy(struct wiimote_data *wdata)
{
 unsigned long flags;

 wiidebug_deinit(wdata);


 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.flags |= WIIPROTO_FLAG_EXITING;
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 cancel_work_sync(&wdata->init_worker);
 del_timer_sync(&wdata->timer);

 device_remove_file(&wdata->hdev->dev, &dev_attr_devtype);
 device_remove_file(&wdata->hdev->dev, &dev_attr_extension);

 wiimote_mp_unload(wdata);
 wiimote_ext_unload(wdata);
 wiimote_modules_unload(wdata);
 cancel_work_sync(&wdata->queue.worker);
 hid_hw_close(wdata->hdev);
 hid_hw_stop(wdata->hdev);

 kfree(wdata);
}
