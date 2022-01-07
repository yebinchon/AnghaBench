
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct hid_device {int dummy; } ;


 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_CLEAR_FEATURE ;
 int USB_TYPE_CLASS ;
 int hid_info (struct hid_device*,char*,char*,unsigned char,unsigned char,unsigned char,unsigned char) ;
 struct usb_device* hid_to_usb_dev (struct hid_device*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int ntrig_version_string (unsigned char*,char*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int,unsigned char*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void ntrig_report_version(struct hid_device *hdev)
{
 int ret;
 char buf[20];
 struct usb_device *usb_dev = hid_to_usb_dev(hdev);
 unsigned char *data = kmalloc(8, GFP_KERNEL);

 if (!data)
  goto err_free;

 ret = usb_control_msg(usb_dev, usb_rcvctrlpipe(usb_dev, 0),
         USB_REQ_CLEAR_FEATURE,
         USB_TYPE_CLASS | USB_RECIP_INTERFACE |
         USB_DIR_IN,
         0x30c, 1, data, 8,
         USB_CTRL_SET_TIMEOUT);

 if (ret == 8) {
  ret = ntrig_version_string(&data[2], buf);

  hid_info(hdev, "Firmware version: %s (%02x%02x %02x%02x)\n",
    buf, data[2], data[3], data[4], data[5]);
 }

err_free:
 kfree(data);
}
