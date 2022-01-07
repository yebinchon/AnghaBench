
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dev; } ;
struct es2_ap_dev {struct usb_device* usb_dev; } ;
struct arpc {TYPE_1__* req; } ;
struct TYPE_2__ {int type; int size; } ;


 int EIO ;
 int ES2_USB_CTRL_TIMEOUT ;
 int GB_APB_REQUEST_ARPC_RUN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int ,int) ;
 int le16_to_cpu (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,TYPE_1__*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int arpc_send(struct es2_ap_dev *es2, struct arpc *rpc, int timeout)
{
 struct usb_device *udev = es2->usb_dev;
 int retval;

 retval = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
     GB_APB_REQUEST_ARPC_RUN,
     USB_DIR_OUT | USB_TYPE_VENDOR |
     USB_RECIP_INTERFACE,
     0, 0,
     rpc->req, le16_to_cpu(rpc->req->size),
     ES2_USB_CTRL_TIMEOUT);
 if (retval != le16_to_cpu(rpc->req->size)) {
  dev_err(&udev->dev,
   "failed to send ARPC request %d: %d\n",
   rpc->req->type, retval);
  if (retval > 0)
   retval = -EIO;
  return retval;
 }

 return 0;
}
