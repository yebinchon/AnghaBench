
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct isku_device {scalar_t__ roccat_claimed; } ;
struct hid_report {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct hid_device {TYPE_1__ dev; } ;
struct TYPE_5__ {scalar_t__ bInterfaceProtocol; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;


 scalar_t__ ISKU_USB_INTERFACE_PROTOCOL ;
 struct isku_device* hid_get_drvdata (struct hid_device*) ;
 int isku_keep_values_up_to_date (struct isku_device*,int *) ;
 int isku_report_to_chrdev (struct isku_device*,int *) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static int isku_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *data, int size)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct isku_device *isku = hid_get_drvdata(hdev);

 if (intf->cur_altsetting->desc.bInterfaceProtocol
   != ISKU_USB_INTERFACE_PROTOCOL)
  return 0;

 if (isku == ((void*)0))
  return 0;

 isku_keep_values_up_to_date(isku, data);

 if (isku->roccat_claimed)
  isku_report_to_chrdev(isku, data);

 return 0;
}
