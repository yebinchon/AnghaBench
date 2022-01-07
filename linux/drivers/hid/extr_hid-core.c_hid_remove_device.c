
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int status; scalar_t__ dev_rsize; int * dev_rdesc; int dev; } ;


 int HID_STAT_ADDED ;
 int device_del (int *) ;
 int hid_debug_unregister (struct hid_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void hid_remove_device(struct hid_device *hdev)
{
 if (hdev->status & HID_STAT_ADDED) {
  device_del(&hdev->dev);
  hid_debug_unregister(hdev);
  hdev->status &= ~HID_STAT_ADDED;
 }
 kfree(hdev->dev_rdesc);
 hdev->dev_rdesc = ((void*)0);
 hdev->dev_rsize = 0;
}
