
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbhid_device {TYPE_2__* intf; } ;
struct hiddev {int exist; int initialized; int minor; struct hid_device* hid; int existancelock; int list_lock; int list; int wait; } ;
struct hid_device {unsigned int maxcollection; int quirks; struct hiddev* hiddev; TYPE_1__* collection; struct usbhid_device* driver_data; } ;
struct TYPE_4__ {int minor; } ;
struct TYPE_3__ {scalar_t__ type; int usage; } ;


 int GFP_KERNEL ;
 scalar_t__ HID_COLLECTION_APPLICATION ;
 int HID_QUIRK_NO_INIT_REPORTS ;
 int INIT_LIST_HEAD (int *) ;
 int IS_INPUT_APPLICATION (int ) ;
 int hid_err (struct hid_device*,char*) ;
 int hiddev_class ;
 int init_waitqueue_head (int *) ;
 int kfree (struct hiddev*) ;
 struct hiddev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int usb_register_dev (TYPE_2__*,int *) ;

int hiddev_connect(struct hid_device *hid, unsigned int force)
{
 struct hiddev *hiddev;
 struct usbhid_device *usbhid = hid->driver_data;
 int retval;

 if (!force) {
  unsigned int i;
  for (i = 0; i < hid->maxcollection; i++)
   if (hid->collection[i].type ==
       HID_COLLECTION_APPLICATION &&
       !IS_INPUT_APPLICATION(hid->collection[i].usage))
    break;

  if (i == hid->maxcollection)
   return -1;
 }

 if (!(hiddev = kzalloc(sizeof(struct hiddev), GFP_KERNEL)))
  return -1;

 init_waitqueue_head(&hiddev->wait);
 INIT_LIST_HEAD(&hiddev->list);
 spin_lock_init(&hiddev->list_lock);
 mutex_init(&hiddev->existancelock);
 hid->hiddev = hiddev;
 hiddev->hid = hid;
 hiddev->exist = 1;
 retval = usb_register_dev(usbhid->intf, &hiddev_class);
 if (retval) {
  hid_err(hid, "Not able to get a minor for this device\n");
  hid->hiddev = ((void*)0);
  kfree(hiddev);
  return -1;
 }





 hiddev->initialized = hid->quirks & HID_QUIRK_NO_INIT_REPORTS;

 hiddev->minor = usbhid->intf->minor;

 return 0;
}
