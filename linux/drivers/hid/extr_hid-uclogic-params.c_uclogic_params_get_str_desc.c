
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct hid_device {int dummy; } ;
typedef scalar_t__ __u8 ;


 int EINVAL ;
 int ENOMEM ;
 int EPIPE ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DT_STRING ;
 int USB_REQ_GET_DESCRIPTOR ;
 int hid_dbg (struct hid_device*,char*,scalar_t__) ;
 int hid_err (struct hid_device*,char*,scalar_t__,int) ;
 struct usb_device* hid_to_usb_dev (struct hid_device*) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (size_t,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,scalar_t__,int,scalar_t__*,size_t,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int uclogic_params_get_str_desc(__u8 **pbuf, struct hid_device *hdev,
     __u8 idx, size_t len)
{
 int rc;
 struct usb_device *udev = hid_to_usb_dev(hdev);
 __u8 *buf = ((void*)0);


 if (hdev == ((void*)0)) {
  rc = -EINVAL;
  goto cleanup;
 }

 buf = kmalloc(len, GFP_KERNEL);
 if (buf == ((void*)0)) {
  rc = -ENOMEM;
  goto cleanup;
 }

 rc = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
    USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
    (USB_DT_STRING << 8) + idx,
    0x0409, buf, len,
    USB_CTRL_GET_TIMEOUT);
 if (rc == -EPIPE) {
  hid_dbg(hdev, "string descriptor #%hhu not found\n", idx);
  goto cleanup;
 } else if (rc < 0) {
  hid_err(hdev,
   "failed retrieving string descriptor #%hhu: %d\n",
   idx, rc);
  goto cleanup;
 }

 if (pbuf != ((void*)0)) {
  *pbuf = buf;
  buf = ((void*)0);
 }

cleanup:
 kfree(buf);
 return rc;
}
