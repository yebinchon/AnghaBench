
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct kone_profile {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_CLEAR_FEATURE ;
 int USB_TYPE_CLASS ;
 int kone_command_profile ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int,struct kone_profile*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int kone_get_profile(struct usb_device *usb_dev,
  struct kone_profile *buf, int number)
{
 int len;

 if (number < 1 || number > 5)
  return -EINVAL;

 len = usb_control_msg(usb_dev, usb_rcvctrlpipe(usb_dev, 0),
   USB_REQ_CLEAR_FEATURE,
   USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_IN,
   kone_command_profile, number, buf,
   sizeof(struct kone_profile), USB_CTRL_SET_TIMEOUT);

 if (len != sizeof(struct kone_profile))
  return -EIO;

 return 0;
}
