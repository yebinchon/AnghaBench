
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_tiny_usb {int usb_dev; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int kfree (void*) ;
 void* kmemdup (void*,int,int ) ;
 int usb_control_msg (int ,int ,int,int,int,int,void*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usb_write(struct i2c_adapter *adapter, int cmd,
       int value, int index, void *data, int len)
{
 struct i2c_tiny_usb *dev = (struct i2c_tiny_usb *)adapter->algo_data;
 void *dmadata = kmemdup(data, len, GFP_KERNEL);
 int ret;

 if (!dmadata)
  return -ENOMEM;


 ret = usb_control_msg(dev->usb_dev, usb_sndctrlpipe(dev->usb_dev, 0),
          cmd, USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
          value, index, dmadata, len, 2000);

 kfree(dmadata);
 return ret;
}
