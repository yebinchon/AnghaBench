
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_tiny_usb {int usb_dev; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_control_msg (int ,int ,int,int,int,int,void*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int usb_read(struct i2c_adapter *adapter, int cmd,
      int value, int index, void *data, int len)
{
 struct i2c_tiny_usb *dev = (struct i2c_tiny_usb *)adapter->algo_data;
 void *dmadata = kmalloc(len, GFP_KERNEL);
 int ret;

 if (!dmadata)
  return -ENOMEM;


 ret = usb_control_msg(dev->usb_dev, usb_rcvctrlpipe(dev->usb_dev, 0),
          cmd, USB_TYPE_VENDOR | USB_RECIP_INTERFACE |
          USB_DIR_IN, value, index, dmadata, len, 2000);

 memcpy(data, dmadata, len);
 kfree(dmadata);
 return ret;
}
