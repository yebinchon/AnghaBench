
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int quirks; } ;


 int HID_QUIRK_HAVE_SPECIAL_DRIVER ;
 int __check_hid_generic ;
 scalar_t__ bus_for_each_drv (int *,int *,struct hid_device*,int ) ;
 int hid_bus_type ;

__attribute__((used)) static bool hid_generic_match(struct hid_device *hdev,
         bool ignore_special_driver)
{
 if (ignore_special_driver)
  return 1;

 if (hdev->quirks & HID_QUIRK_HAVE_SPECIAL_DRIVER)
  return 0;





 if (bus_for_each_drv(&hid_bus_type, ((void*)0), hdev, __check_hid_generic))
  return 0;

 return 1;
}
