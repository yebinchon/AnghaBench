
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct osif_priv {int usb_dev; int adapter; } ;


 int i2c_del_adapter (int *) ;
 struct osif_priv* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void osif_disconnect(struct usb_interface *interface)
{
 struct osif_priv *priv = usb_get_intfdata(interface);

 i2c_del_adapter(&(priv->adapter));
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(priv->usb_dev);
}
