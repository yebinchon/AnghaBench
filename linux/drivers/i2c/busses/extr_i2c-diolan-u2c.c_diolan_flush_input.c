
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_diolan_u2c {TYPE_1__* interface; int ibuffer; int ep_in; int usb_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DIOLAN_USB_TIMEOUT ;
 int dev_err (int *,char*) ;
 int usb_bulk_msg (int ,int ,int ,int,int*,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static void diolan_flush_input(struct i2c_diolan_u2c *dev)
{
 int i;

 for (i = 0; i < 10; i++) {
  int actual = 0;
  int ret;

  ret = usb_bulk_msg(dev->usb_dev,
       usb_rcvbulkpipe(dev->usb_dev, dev->ep_in),
       dev->ibuffer, sizeof(dev->ibuffer), &actual,
       DIOLAN_USB_TIMEOUT);
  if (ret < 0 || actual == 0)
   break;
 }
 if (i == 10)
  dev_err(&dev->interface->dev, "Failed to flush input buffer\n");
}
