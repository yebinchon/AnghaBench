
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct i2c_diolan_u2c {int adapter; } ;


 int dev_dbg (int *,char*) ;
 int diolan_u2c_free (struct i2c_diolan_u2c*) ;
 int i2c_del_adapter (int *) ;
 struct i2c_diolan_u2c* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void diolan_u2c_disconnect(struct usb_interface *interface)
{
 struct i2c_diolan_u2c *dev = usb_get_intfdata(interface);

 i2c_del_adapter(&dev->adapter);
 usb_set_intfdata(interface, ((void*)0));
 diolan_u2c_free(dev);

 dev_dbg(&interface->dev, "disconnected\n");
}
