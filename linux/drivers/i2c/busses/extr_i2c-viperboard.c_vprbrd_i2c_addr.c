
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vprbrd_i2c_addr_msg {int dummy; } ;
struct usb_device {int dev; } ;


 int EREMOTEIO ;
 int VPRBRD_EP_OUT ;
 int VPRBRD_USB_TIMEOUT_MS ;
 int dev_err (int *,char*) ;
 int usb_bulk_msg (struct usb_device*,int ,struct vprbrd_i2c_addr_msg*,int,int*,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int vprbrd_i2c_addr(struct usb_device *usb_dev,
 struct vprbrd_i2c_addr_msg *amsg)
{
 int ret, bytes_actual;

 ret = usb_bulk_msg(usb_dev,
  usb_sndbulkpipe(usb_dev, VPRBRD_EP_OUT), amsg,
  sizeof(struct vprbrd_i2c_addr_msg), &bytes_actual,
  VPRBRD_USB_TIMEOUT_MS);

 if ((ret < 0) ||
   (sizeof(struct vprbrd_i2c_addr_msg) != bytes_actual)) {
  dev_err(&usb_dev->dev, "failure transmitting usb\n");
  return -EREMOTEIO;
 }
 return 0;
}
