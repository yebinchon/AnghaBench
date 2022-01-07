
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int claimed; int (* hiddev_disconnect ) (struct hid_device*) ;int dev; } ;


 int HID_CLAIMED_HIDDEV ;
 int HID_CLAIMED_HIDRAW ;
 int HID_CLAIMED_INPUT ;
 int dev_attr_country ;
 int device_remove_file (int *,int *) ;
 int hidinput_disconnect (struct hid_device*) ;
 int hidraw_disconnect (struct hid_device*) ;
 int stub1 (struct hid_device*) ;

void hid_disconnect(struct hid_device *hdev)
{
 device_remove_file(&hdev->dev, &dev_attr_country);
 if (hdev->claimed & HID_CLAIMED_INPUT)
  hidinput_disconnect(hdev);
 if (hdev->claimed & HID_CLAIMED_HIDDEV)
  hdev->hiddev_disconnect(hdev);
 if (hdev->claimed & HID_CLAIMED_HIDRAW)
  hidraw_disconnect(hdev);
 hdev->claimed = 0;
}
