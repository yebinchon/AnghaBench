
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_driver {int dummy; } ;
struct hid_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int * hid_match_device (struct hid_device*,struct hid_driver*) ;
 struct hid_device* to_hid_device (struct device*) ;
 struct hid_driver* to_hid_driver (struct device_driver*) ;

__attribute__((used)) static int hid_bus_match(struct device *dev, struct device_driver *drv)
{
 struct hid_driver *hdrv = to_hid_driver(drv);
 struct hid_device *hdev = to_hid_device(dev);

 return hid_match_device(hdev, hdrv) != ((void*)0);
}
