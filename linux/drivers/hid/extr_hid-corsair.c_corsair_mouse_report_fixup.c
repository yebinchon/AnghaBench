
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct TYPE_4__ {int parent; } ;
struct hid_device {int product; TYPE_1__ dev; } ;
typedef int __u8 ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;




 int hid_info (struct hid_device*,char*) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static __u8 *corsair_mouse_report_fixup(struct hid_device *hdev, __u8 *rdesc,
        unsigned int *rsize)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);

 if (intf->cur_altsetting->desc.bInterfaceNumber == 1) {







  switch (hdev->product) {
  case 129:
  case 128:
   if (*rsize >= 172 && rdesc[75] == 0x15 && rdesc[77] == 0x16
   && rdesc[78] == 0xff && rdesc[79] == 0x0f) {
    hid_info(hdev, "Fixing up report descriptor\n");
    rdesc[77] = 0x26;
   }
   break;
  }

 }
 return rdesc;
}
