
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
typedef int __le16 ;


 int EIO ;
 int ENOMEM ;
 int ES2_USB_CTRL_TIMEOUT ;
 int GB_APB_REQUEST_CPORT_COUNT ;
 int GFP_KERNEL ;
 int U8_MAX ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int apb_get_cport_count(struct usb_device *udev)
{
 int retval;
 __le16 *cport_count;

 cport_count = kzalloc(sizeof(*cport_count), GFP_KERNEL);
 if (!cport_count)
  return -ENOMEM;

 retval = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
     GB_APB_REQUEST_CPORT_COUNT,
     USB_DIR_IN | USB_TYPE_VENDOR |
     USB_RECIP_INTERFACE, 0, 0, cport_count,
     sizeof(*cport_count), ES2_USB_CTRL_TIMEOUT);
 if (retval != sizeof(*cport_count)) {
  dev_err(&udev->dev, "Cannot retrieve CPort count: %d\n",
   retval);

  if (retval >= 0)
   retval = -EIO;

  goto out;
 }

 retval = le16_to_cpu(*cport_count);


 if (retval > U8_MAX) {
  retval = U8_MAX;
  dev_warn(&udev->dev, "Limiting number of CPorts to U8_MAX\n");
 }

out:
 kfree(cport_count);
 return retval;
}
