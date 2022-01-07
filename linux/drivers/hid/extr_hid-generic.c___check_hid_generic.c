
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_driver {int dummy; } ;
struct hid_device {int dummy; } ;
struct device_driver {int dummy; } ;


 struct hid_driver hid_generic ;
 int * hid_match_device (struct hid_device*,struct hid_driver*) ;
 struct hid_driver* to_hid_driver (struct device_driver*) ;

__attribute__((used)) static int __check_hid_generic(struct device_driver *drv, void *data)
{
 struct hid_driver *hdrv = to_hid_driver(drv);
 struct hid_device *hdev = data;

 if (hdrv == &hid_generic)
  return 0;

 return hid_match_device(hdev, hdrv) != ((void*)0);
}
