
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct aiptek {int ifnum; int intf; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_SET_REPORT ;
 int USB_TYPE_CLASS ;
 struct usb_device* interface_to_usbdev (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,unsigned char,int ,void*,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int
aiptek_set_report(struct aiptek *aiptek,
    unsigned char report_type,
    unsigned char report_id, void *buffer, int size)
{
 struct usb_device *udev = interface_to_usbdev(aiptek->intf);

 return usb_control_msg(udev,
          usb_sndctrlpipe(udev, 0),
          USB_REQ_SET_REPORT,
          USB_TYPE_CLASS | USB_RECIP_INTERFACE |
          USB_DIR_OUT, (report_type << 8) + report_id,
          aiptek->ifnum, buffer, size, 5000);
}
