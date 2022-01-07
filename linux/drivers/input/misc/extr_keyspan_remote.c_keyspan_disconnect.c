
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_keyspan {int in_dma; int in_buffer; int udev; int irq_urb; int input; } ;
struct usb_interface {int dummy; } ;


 int RECV_SIZE ;
 int input_unregister_device (int ) ;
 int kfree (struct usb_keyspan*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct usb_keyspan* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void keyspan_disconnect(struct usb_interface *interface)
{
 struct usb_keyspan *remote;

 remote = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));

 if (remote) {
  input_unregister_device(remote->input);
  usb_kill_urb(remote->irq_urb);
  usb_free_urb(remote->irq_urb);
  usb_free_coherent(remote->udev, RECV_SIZE, remote->in_buffer, remote->in_dma);
  kfree(remote);
 }
}
