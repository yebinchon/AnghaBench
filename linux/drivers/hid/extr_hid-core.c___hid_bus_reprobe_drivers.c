
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_driver {int (* match ) (struct hid_device*,int ) ;} ;
struct hid_device {int status; struct hid_driver* driver; } ;
struct device {int dummy; } ;


 int HID_STAT_REPROBED ;
 int device_reprobe (struct device*) ;
 int ffs (int ) ;
 int hid_ignore_special_drivers ;
 int stub1 (struct hid_device*,int ) ;
 int test_and_set_bit (int ,int *) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static int __hid_bus_reprobe_drivers(struct device *dev, void *data)
{
 struct hid_driver *hdrv = data;
 struct hid_device *hdev = to_hid_device(dev);

 if (hdev->driver == hdrv &&
     !hdrv->match(hdev, hid_ignore_special_drivers) &&
     !test_and_set_bit(ffs(HID_STAT_REPROBED), &hdev->status))
  return device_reprobe(dev);

 return 0;
}
