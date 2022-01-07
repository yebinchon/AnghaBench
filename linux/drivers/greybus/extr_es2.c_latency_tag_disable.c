
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dev; } ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {struct usb_device* usb_dev; } ;


 int ES2_USB_CTRL_TIMEOUT ;
 int GB_APB_REQUEST_LATENCY_TAG_DIS ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int ) ;
 struct es2_ap_dev* hd_to_es2 (struct gb_host_device*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int latency_tag_disable(struct gb_host_device *hd, u16 cport_id)
{
 int retval;
 struct es2_ap_dev *es2 = hd_to_es2(hd);
 struct usb_device *udev = es2->usb_dev;

 retval = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
     GB_APB_REQUEST_LATENCY_TAG_DIS,
     USB_DIR_OUT | USB_TYPE_VENDOR |
     USB_RECIP_INTERFACE, cport_id, 0, ((void*)0),
     0, ES2_USB_CTRL_TIMEOUT);

 if (retval < 0)
  dev_err(&udev->dev, "Cannot disable latency tag for cport %d\n",
   cport_id);
 return retval;
}
