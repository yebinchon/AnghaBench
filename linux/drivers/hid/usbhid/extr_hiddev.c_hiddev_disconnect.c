
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int intf; } ;
struct hiddev {int existancelock; int wait; int hid; scalar_t__ open; scalar_t__ exist; } ;
struct hid_device {struct usbhid_device* driver_data; struct hiddev* hiddev; } ;


 int hid_hw_close (int ) ;
 int hiddev_class ;
 int kfree (struct hiddev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (int ,int *) ;
 int wake_up_interruptible (int *) ;

void hiddev_disconnect(struct hid_device *hid)
{
 struct hiddev *hiddev = hid->hiddev;
 struct usbhid_device *usbhid = hid->driver_data;

 usb_deregister_dev(usbhid->intf, &hiddev_class);

 mutex_lock(&hiddev->existancelock);
 hiddev->exist = 0;

 if (hiddev->open) {
  mutex_unlock(&hiddev->existancelock);
  hid_hw_close(hiddev->hid);
  wake_up_interruptible(&hiddev->wait);
 } else {
  mutex_unlock(&hiddev->existancelock);
  kfree(hiddev);
 }
}
