
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbhid_device {TYPE_1__* urbin; int urbout; } ;
struct TYPE_4__ {int bInterval; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct usb_device {int dummy; } ;
struct u2fzero_device {int buf_in; int urb; struct hid_device* hdev; } ;
struct hid_device {scalar_t__ bus; struct usbhid_device* driver_data; } ;
struct TYPE_3__ {int pipe; } ;


 scalar_t__ BUS_USB ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_REPORT_SIZE ;
 int PIPE_INTERRUPT ;
 struct usb_device* hid_to_usb_dev (struct hid_device*) ;
 int u2fzero_read_callback ;
 int usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (int ,struct usb_device*,unsigned int,int ,int ,int ,int *,int ) ;
 struct usb_host_endpoint* usb_pipe_endpoint (struct usb_device*,int) ;

__attribute__((used)) static int u2fzero_fill_in_urb(struct u2fzero_device *dev)
{
 struct hid_device *hdev = dev->hdev;
 struct usb_device *udev;
 struct usbhid_device *usbhid = hdev->driver_data;
 unsigned int pipe_in;
 struct usb_host_endpoint *ep;

 if (dev->hdev->bus != BUS_USB)
  return -EINVAL;

 udev = hid_to_usb_dev(hdev);

 if (!usbhid->urbout || !usbhid->urbin)
  return -ENODEV;

 ep = usb_pipe_endpoint(udev, usbhid->urbin->pipe);
 if (!ep)
  return -ENODEV;

 dev->urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->urb)
  return -ENOMEM;

 pipe_in = (usbhid->urbin->pipe & ~(3 << 30)) | (PIPE_INTERRUPT << 30);

 usb_fill_int_urb(dev->urb,
  udev,
  pipe_in,
  dev->buf_in,
  HID_REPORT_SIZE,
  u2fzero_read_callback,
  ((void*)0),
  ep->desc.bInterval);

 return 0;
}
