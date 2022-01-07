
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct synusb {int is_open; TYPE_1__* intf; int pm_mutex; int urb; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;


 struct synusb* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void synusb_close(struct input_dev *dev)
{
 struct synusb *synusb = input_get_drvdata(dev);
 int autopm_error;

 autopm_error = usb_autopm_get_interface(synusb->intf);

 mutex_lock(&synusb->pm_mutex);
 usb_kill_urb(synusb->urb);
 synusb->intf->needs_remote_wakeup = 0;
 synusb->is_open = 0;
 mutex_unlock(&synusb->pm_mutex);

 if (!autopm_error)
  usb_autopm_put_interface(synusb->intf);
}
