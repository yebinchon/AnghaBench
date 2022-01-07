
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u2fzero_device {int present; int urb; int lock; } ;
struct hid_device {int dummy; } ;


 struct u2fzero_device* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_free_urb (int ) ;
 int usb_poison_urb (int ) ;

__attribute__((used)) static void u2fzero_remove(struct hid_device *hdev)
{
 struct u2fzero_device *dev = hid_get_drvdata(hdev);

 mutex_lock(&dev->lock);
 dev->present = 0;
 mutex_unlock(&dev->lock);

 hid_hw_stop(hdev);
 usb_poison_urb(dev->urb);
 usb_free_urb(dev->urb);
}
