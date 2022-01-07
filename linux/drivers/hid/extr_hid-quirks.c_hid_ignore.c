
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device {int quirks; int vendor; int product; scalar_t__ type; int name; int bus; } ;
struct TYPE_2__ {char* id; } ;


 int BUS_USB ;
 int HID_QUIRK_IGNORE ;
 int HID_QUIRK_NO_IGNORE ;
 scalar_t__ HID_TYPE_USBMOUSE ;
 scalar_t__ HID_TYPE_USBNONE ;
 int USB_DEVICE_ID_ATMEL_V_USB ;
 int USB_DEVICE_ID_CODEMERCS_IOW_FIRST ;
 int USB_DEVICE_ID_CODEMERCS_IOW_LAST ;
 int USB_DEVICE_ID_HANWANG_TABLET_FIRST ;
 int USB_DEVICE_ID_HANWANG_TABLET_LAST ;
 int USB_DEVICE_ID_JESS_YUREX ;
 int USB_DEVICE_ID_LOGITECH_AUDIOHUB ;
 int USB_DEVICE_ID_LOGITECH_HARMONY_FIRST ;
 int USB_DEVICE_ID_LOGITECH_HARMONY_LAST ;
 int USB_DEVICE_ID_SOUNDGRAPH_IMON_FIRST ;
 int USB_DEVICE_ID_SOUNDGRAPH_IMON_LAST ;
 int USB_DEVICE_ID_VELLEMAN_K8055_FIRST ;
 int USB_DEVICE_ID_VELLEMAN_K8055_LAST ;
 int USB_DEVICE_ID_VELLEMAN_K8061_FIRST ;
 int USB_DEVICE_ID_VELLEMAN_K8061_LAST ;
 TYPE_1__* elan_acpi_id ;
 int hid_ignore_list ;
 scalar_t__ hid_match_id (struct hid_device*,int ) ;
 int hid_mouse_ignore_list ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;
 int strncmp (int ,char*,int) ;

bool hid_ignore(struct hid_device *hdev)
{
 int i;

 if (hdev->quirks & HID_QUIRK_NO_IGNORE)
  return 0;
 if (hdev->quirks & HID_QUIRK_IGNORE)
  return 1;

 switch (hdev->vendor) {
 case 134:

  if (hdev->product >= USB_DEVICE_ID_CODEMERCS_IOW_FIRST &&
      hdev->product <= USB_DEVICE_ID_CODEMERCS_IOW_LAST)
   return 1;
  break;
 case 130:
  if (hdev->product >= USB_DEVICE_ID_LOGITECH_HARMONY_FIRST &&
      hdev->product <= USB_DEVICE_ID_LOGITECH_HARMONY_LAST)
   return 1;







  if (hdev->product == USB_DEVICE_ID_LOGITECH_AUDIOHUB &&
      !strcmp(hdev->name, "HOLTEK  B-LINK USB Audio  "))
   return 1;
  break;
 case 129:
  if (hdev->product >= USB_DEVICE_ID_SOUNDGRAPH_IMON_FIRST &&
      hdev->product <= USB_DEVICE_ID_SOUNDGRAPH_IMON_LAST)
   return 1;
  break;
 case 132:
  if (hdev->product >= USB_DEVICE_ID_HANWANG_TABLET_FIRST &&
      hdev->product <= USB_DEVICE_ID_HANWANG_TABLET_LAST)
   return 1;
  break;
 case 131:
  if (hdev->product == USB_DEVICE_ID_JESS_YUREX &&
      hdev->type == HID_TYPE_USBNONE)
   return 1;
  break;
 case 128:

  if ((hdev->product >= USB_DEVICE_ID_VELLEMAN_K8055_FIRST &&
       hdev->product <= USB_DEVICE_ID_VELLEMAN_K8055_LAST) ||
      (hdev->product >= USB_DEVICE_ID_VELLEMAN_K8061_FIRST &&
       hdev->product <= USB_DEVICE_ID_VELLEMAN_K8061_LAST))
   return 1;
  break;
 case 135:






  if (hdev->product == USB_DEVICE_ID_ATMEL_V_USB &&
      hdev->bus == BUS_USB &&
      strncmp(hdev->name, "www.masterkit.ru MA901", 22) == 0)
   return 1;
  break;
 case 133:





  if ((hdev->product == 0x0401 || hdev->product == 0x0400))
   for (i = 0; strlen(elan_acpi_id[i].id); ++i)
    if (!strncmp(hdev->name, elan_acpi_id[i].id,
          strlen(elan_acpi_id[i].id)))
     return 1;
  break;
 }

 if (hdev->type == HID_TYPE_USBMOUSE &&
     hid_match_id(hdev, hid_mouse_ignore_list))
  return 1;

 return !!hid_match_id(hdev, hid_ignore_list);
}
