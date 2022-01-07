
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {scalar_t__ bus; scalar_t__ vendor; int product; int version; } ;


 scalar_t__ BUS_USB ;
 unsigned long HID_QUIRK_IGNORE ;
 unsigned long HID_QUIRK_NO_INIT_REPORTS ;


 int USB_DEVICE_ID_NCR_FIRST ;
 int USB_DEVICE_ID_NCR_LAST ;
 scalar_t__ USB_VENDOR_ID_JABRA ;
 scalar_t__ USB_VENDOR_ID_NCR ;
 int dquirks_lock ;
 struct hid_device_id* hid_exists_dquirk (struct hid_device const*) ;
 unsigned long hid_gets_squirk (struct hid_device const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

unsigned long hid_lookup_quirk(const struct hid_device *hdev)
{
 unsigned long quirks = 0;
 const struct hid_device_id *quirk_entry = ((void*)0);


 if (hdev->bus == BUS_USB &&
     hdev->vendor == USB_VENDOR_ID_NCR &&
     hdev->product >= USB_DEVICE_ID_NCR_FIRST &&
     hdev->product <= USB_DEVICE_ID_NCR_LAST)
  return HID_QUIRK_NO_INIT_REPORTS;


 if (hdev->bus == BUS_USB && hdev->vendor == USB_VENDOR_ID_JABRA) {
  switch (hdev->product) {
  case 129:
   if (hdev->version < 0x0111)
    return HID_QUIRK_IGNORE;
   break;
  case 128:
   if (hdev->version < 0x0214)
    return HID_QUIRK_IGNORE;
   break;
  }
 }

 mutex_lock(&dquirks_lock);
 quirk_entry = hid_exists_dquirk(hdev);
 if (quirk_entry)
  quirks = quirk_entry->driver_data;
 else
  quirks = hid_gets_squirk(hdev);
 mutex_unlock(&dquirks_lock);

 return quirks;
}
