
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct usb_device {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_REQ_GET_REPORT ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (void*,char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,char*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int kone_receive(struct usb_device *usb_dev, uint usb_command,
  void *data, uint size)
{
 char *buf;
 int len;

 buf = kmalloc(size, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 len = usb_control_msg(usb_dev, usb_rcvctrlpipe(usb_dev, 0),
   HID_REQ_GET_REPORT,
   USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_IN,
   usb_command, 0, buf, size, USB_CTRL_SET_TIMEOUT);

 memcpy(data, buf, size);
 kfree(buf);
 return ((len < 0) ? len : ((len != size) ? -EIO : 0));
}
