
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int product; int vendor; } ;


 unsigned long HID_QUIRK_HAVE_SPECIAL_DRIVER ;
 unsigned long HID_QUIRK_IGNORE ;
 int dbg_hid (char*,unsigned long,int ,int ) ;
 int hid_have_special_driver ;
 int hid_ignore_list ;
 struct hid_device_id* hid_match_id (struct hid_device const*,int ) ;
 int hid_quirks ;

__attribute__((used)) static unsigned long hid_gets_squirk(const struct hid_device *hdev)
{
 const struct hid_device_id *bl_entry;
 unsigned long quirks = 0;

 if (hid_match_id(hdev, hid_ignore_list))
  quirks |= HID_QUIRK_IGNORE;

 if (hid_match_id(hdev, hid_have_special_driver))
  quirks |= HID_QUIRK_HAVE_SPECIAL_DRIVER;

 bl_entry = hid_match_id(hdev, hid_quirks);
 if (bl_entry != ((void*)0))
  quirks |= bl_entry->driver_data;

 if (quirks)
  dbg_hid("Found squirk 0x%lx for HID device 0x%04x:0x%04x\n",
   quirks, hdev->vendor, hdev->product);
 return quirks;
}
