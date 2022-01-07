
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device {int dummy; } ;
struct gtco {int buf_dma; int buffer; int urbinfo; int inputdevice; } ;


 int REPORT_MAX_SIZE ;
 int dev_info (int *,char*) ;
 int input_unregister_device (int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct gtco*) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct gtco* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void gtco_disconnect(struct usb_interface *interface)
{

 struct gtco *gtco = usb_get_intfdata(interface);
 struct usb_device *udev = interface_to_usbdev(interface);


 if (gtco) {
  input_unregister_device(gtco->inputdevice);
  usb_kill_urb(gtco->urbinfo);
  usb_free_urb(gtco->urbinfo);
  usb_free_coherent(udev, REPORT_MAX_SIZE,
      gtco->buffer, gtco->buf_dma);
  kfree(gtco);
 }

 dev_info(&interface->dev, "gtco driver disconnected\n");
}
