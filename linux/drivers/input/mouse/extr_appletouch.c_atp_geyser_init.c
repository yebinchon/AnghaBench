
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct atp {TYPE_1__* intf; struct usb_device* udev; } ;
struct TYPE_2__ {int dev; } ;


 int ATP_GEYSER_MODE_READ_REQUEST_ID ;
 int ATP_GEYSER_MODE_REQUEST_INDEX ;
 int ATP_GEYSER_MODE_REQUEST_VALUE ;
 char ATP_GEYSER_MODE_VENDOR_VALUE ;
 int ATP_GEYSER_MODE_WRITE_REQUEST_ID ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_err (int *,char*) ;
 int dprintk (char*,...) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,char*,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int atp_geyser_init(struct atp *dev)
{
 struct usb_device *udev = dev->udev;
 char *data;
 int size;
 int i;
 int ret;

 data = kmalloc(8, GFP_KERNEL);
 if (!data) {
  dev_err(&dev->intf->dev, "Out of memory\n");
  return -ENOMEM;
 }

 size = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
   ATP_GEYSER_MODE_READ_REQUEST_ID,
   USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   ATP_GEYSER_MODE_REQUEST_VALUE,
   ATP_GEYSER_MODE_REQUEST_INDEX, data, 8, 5000);

 if (size != 8) {
  dprintk("atp_geyser_init: read error\n");
  for (i = 0; i < 8; i++)
   dprintk("appletouch[%d]: %d\n", i, data[i]);

  dev_err(&dev->intf->dev, "Failed to read mode from device.\n");
  ret = -EIO;
  goto out_free;
 }


 data[0] = ATP_GEYSER_MODE_VENDOR_VALUE;

 size = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
   ATP_GEYSER_MODE_WRITE_REQUEST_ID,
   USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   ATP_GEYSER_MODE_REQUEST_VALUE,
   ATP_GEYSER_MODE_REQUEST_INDEX, data, 8, 5000);

 if (size != 8) {
  dprintk("atp_geyser_init: write error\n");
  for (i = 0; i < 8; i++)
   dprintk("appletouch[%d]: %d\n", i, data[i]);

  dev_err(&dev->intf->dev, "Failed to request geyser raw mode\n");
  ret = -EIO;
  goto out_free;
 }
 ret = 0;
out_free:
 kfree(data);
 return ret;
}
