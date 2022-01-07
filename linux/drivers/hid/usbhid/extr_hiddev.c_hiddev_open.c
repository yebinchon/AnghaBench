
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct hiddev_list {struct hiddev* hiddev; int node; int thread_lock; } ;
struct hiddev {int list_lock; int existancelock; struct hid_device* hid; scalar_t__ exist; int open; int list; } ;
struct hid_device {struct hiddev* hiddev; } ;
struct file {struct hiddev_list* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int PM_HINT_FULLON ;
 int PM_HINT_NORMAL ;
 int hid_hw_open (struct hid_device*) ;
 int hid_hw_power (struct hid_device*,int ) ;
 int iminor (struct inode*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct hid_device* usb_get_intfdata (struct usb_interface*) ;
 struct usb_interface* usbhid_find_interface (int ) ;
 int vfree (struct hiddev_list*) ;
 struct hiddev_list* vzalloc (int) ;

__attribute__((used)) static int hiddev_open(struct inode *inode, struct file *file)
{
 struct hiddev_list *list;
 struct usb_interface *intf;
 struct hid_device *hid;
 struct hiddev *hiddev;
 int res;

 intf = usbhid_find_interface(iminor(inode));
 if (!intf)
  return -ENODEV;
 hid = usb_get_intfdata(intf);
 hiddev = hid->hiddev;

 if (!(list = vzalloc(sizeof(struct hiddev_list))))
  return -ENOMEM;
 mutex_init(&list->thread_lock);
 list->hiddev = hiddev;
 file->private_data = list;





 if (list->hiddev->exist) {
  if (!list->hiddev->open++) {
   res = hid_hw_open(hiddev->hid);
   if (res < 0)
    goto bail;
  }
 } else {
  res = -ENODEV;
  goto bail;
 }

 spin_lock_irq(&list->hiddev->list_lock);
 list_add_tail(&list->node, &hiddev->list);
 spin_unlock_irq(&list->hiddev->list_lock);

 mutex_lock(&hiddev->existancelock);




 if (!list->hiddev->exist) {
  res = -ENODEV;
  goto bail_unlock;
 }
 if (!list->hiddev->open++)
  if (list->hiddev->exist) {
   struct hid_device *hid = hiddev->hid;
   res = hid_hw_power(hid, PM_HINT_FULLON);
   if (res < 0)
    goto bail_unlock;
   res = hid_hw_open(hid);
   if (res < 0)
    goto bail_normal_power;
  }
 mutex_unlock(&hiddev->existancelock);
 return 0;
bail_normal_power:
 hid_hw_power(hid, PM_HINT_NORMAL);
bail_unlock:
 mutex_unlock(&hiddev->existancelock);

 spin_lock_irq(&list->hiddev->list_lock);
 list_del(&list->node);
 spin_unlock_irq(&list->hiddev->list_lock);
bail:
 file->private_data = ((void*)0);
 vfree(list);
 return res;
}
