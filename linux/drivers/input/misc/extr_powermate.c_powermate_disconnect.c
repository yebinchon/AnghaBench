
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct powermate_device {int config; int irq; int input; scalar_t__ requires_update; } ;


 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct powermate_device*) ;
 int powermate_free_buffers (int ,struct powermate_device*) ;
 int usb_free_urb (int ) ;
 struct powermate_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void powermate_disconnect(struct usb_interface *intf)
{
 struct powermate_device *pm = usb_get_intfdata (intf);

 usb_set_intfdata(intf, ((void*)0));
 if (pm) {
  pm->requires_update = 0;
  usb_kill_urb(pm->irq);
  input_unregister_device(pm->input);
  usb_free_urb(pm->irq);
  usb_free_urb(pm->config);
  powermate_free_buffers(interface_to_usbdev(intf), pm);

  kfree(pm);
 }
}
