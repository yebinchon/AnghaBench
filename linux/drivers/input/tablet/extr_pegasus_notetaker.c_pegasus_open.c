
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pegasus {int is_open; int intf; int pm_mutex; int init; TYPE_1__* irq; int usbdev; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 int NOTETAKER_LED_MOUSE ;
 int PEN_MODE_XY ;
 int cancel_work_sync (int *) ;
 struct pegasus* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pegasus_set_mode (struct pegasus*,int ,int ) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_kill_urb (TYPE_1__*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int pegasus_open(struct input_dev *dev)
{
 struct pegasus *pegasus = input_get_drvdata(dev);
 int error;

 error = usb_autopm_get_interface(pegasus->intf);
 if (error)
  return error;

 mutex_lock(&pegasus->pm_mutex);
 pegasus->irq->dev = pegasus->usbdev;
 if (usb_submit_urb(pegasus->irq, GFP_KERNEL)) {
  error = -EIO;
  goto err_autopm_put;
 }

 error = pegasus_set_mode(pegasus, PEN_MODE_XY, NOTETAKER_LED_MOUSE);
 if (error)
  goto err_kill_urb;

 pegasus->is_open = 1;
 mutex_unlock(&pegasus->pm_mutex);
 return 0;

err_kill_urb:
 usb_kill_urb(pegasus->irq);
 cancel_work_sync(&pegasus->init);
err_autopm_put:
 mutex_unlock(&pegasus->pm_mutex);
 usb_autopm_put_interface(pegasus->intf);
 return error;
}
