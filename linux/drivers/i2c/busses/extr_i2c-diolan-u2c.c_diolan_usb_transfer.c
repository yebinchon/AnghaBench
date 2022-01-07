
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_diolan_u2c {int olen; int ocount; int* obuffer; int* ibuffer; int ep_in; int usb_dev; int ep_out; } ;


 int DIOLAN_USB_TIMEOUT ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;



 int usb_bulk_msg (int ,int ,int*,int,int*,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int diolan_usb_transfer(struct i2c_diolan_u2c *dev)
{
 int ret = 0;
 int actual;
 int i;

 if (!dev->olen || !dev->ocount)
  return -EINVAL;

 ret = usb_bulk_msg(dev->usb_dev,
      usb_sndbulkpipe(dev->usb_dev, dev->ep_out),
      dev->obuffer, dev->olen, &actual,
      DIOLAN_USB_TIMEOUT);
 if (!ret) {
  for (i = 0; i < dev->ocount; i++) {
   int tmpret;

   tmpret = usb_bulk_msg(dev->usb_dev,
           usb_rcvbulkpipe(dev->usb_dev,
             dev->ep_in),
           dev->ibuffer,
           sizeof(dev->ibuffer), &actual,
           DIOLAN_USB_TIMEOUT);





   if (ret < 0)
    continue;
   ret = tmpret;
   if (ret == 0 && actual > 0) {
    switch (dev->ibuffer[actual - 1]) {
    case 130:





     ret = i == 1 ? -ENXIO : -EIO;
     break;
    case 128:
     ret = -ETIMEDOUT;
     break;
    case 129:

     ret = actual - 1;
     break;
    default:
     ret = -EIO;
     break;
    }
   }
  }
 }
 dev->olen = 0;
 dev->ocount = 0;
 return ret;
}
