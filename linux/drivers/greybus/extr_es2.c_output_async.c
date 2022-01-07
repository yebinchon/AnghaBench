
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct usb_device {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int wLength; scalar_t__ wIndex; scalar_t__ wValue; int bRequest; } ;
struct urb {int dummy; } ;
struct es2_ap_dev {struct usb_device* usb_dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int ap_urb_complete ;
 int cpu_to_le16 (scalar_t__) ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (scalar_t__,int ) ;
 int memcpy (int *,void*,scalar_t__) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,struct usb_device*,int ,unsigned char*,int *,scalar_t__,int ,struct usb_ctrlrequest*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int output_async(struct es2_ap_dev *es2, void *req, u16 size, u8 cmd)
{
 struct usb_device *udev = es2->usb_dev;
 struct urb *urb;
 struct usb_ctrlrequest *dr;
 u8 *buf;
 int retval;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb)
  return -ENOMEM;

 dr = kmalloc(sizeof(*dr) + size, GFP_ATOMIC);
 if (!dr) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 buf = (u8 *)dr + sizeof(*dr);
 memcpy(buf, req, size);

 dr->bRequest = cmd;
 dr->bRequestType = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE;
 dr->wValue = 0;
 dr->wIndex = 0;
 dr->wLength = cpu_to_le16(size);

 usb_fill_control_urb(urb, udev, usb_sndctrlpipe(udev, 0),
        (unsigned char *)dr, buf, size,
        ap_urb_complete, dr);
 retval = usb_submit_urb(urb, GFP_ATOMIC);
 if (retval) {
  usb_free_urb(urb);
  kfree(dr);
 }
 return retval;
}
