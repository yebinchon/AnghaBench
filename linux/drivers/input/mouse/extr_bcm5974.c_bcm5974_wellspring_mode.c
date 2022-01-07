
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm5974_config {scalar_t__ tp_type; int um_size; size_t um_switch_idx; char um_switch_on; char um_switch_off; int um_req_idx; int um_req_val; } ;
struct bcm5974 {TYPE_1__* intf; int udev; struct bcm5974_config cfg; } ;
struct TYPE_2__ {int dev; } ;


 int BCM5974_WELLSPRING_MODE_READ_REQUEST_ID ;
 int BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ TYPE3 ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_err (int *,char*) ;
 int dprintk (int,char*,char*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int bcm5974_wellspring_mode(struct bcm5974 *dev, bool on)
{
 const struct bcm5974_config *c = &dev->cfg;
 int retval = 0, size;
 char *data;


 if (c->tp_type == TYPE3)
  return 0;

 data = kmalloc(c->um_size, GFP_KERNEL);
 if (!data) {
  dev_err(&dev->intf->dev, "out of memory\n");
  retval = -ENOMEM;
  goto out;
 }


 size = usb_control_msg(dev->udev, usb_rcvctrlpipe(dev->udev, 0),
   BCM5974_WELLSPRING_MODE_READ_REQUEST_ID,
   USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   c->um_req_val, c->um_req_idx, data, c->um_size, 5000);

 if (size != c->um_size) {
  dev_err(&dev->intf->dev, "could not read from device\n");
  retval = -EIO;
  goto out;
 }


 data[c->um_switch_idx] = on ? c->um_switch_on : c->um_switch_off;


 size = usb_control_msg(dev->udev, usb_sndctrlpipe(dev->udev, 0),
   BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID,
   USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   c->um_req_val, c->um_req_idx, data, c->um_size, 5000);

 if (size != c->um_size) {
  dev_err(&dev->intf->dev, "could not write to device\n");
  retval = -EIO;
  goto out;
 }

 dprintk(2, "bcm5974: switched to %s mode.\n",
  on ? "wellspring" : "normal");

 out:
 kfree(data);
 return retval;
}
