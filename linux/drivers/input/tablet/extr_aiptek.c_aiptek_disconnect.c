
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct aiptek {int data_dma; int data; int urb; int inputdev; } ;


 int AIPTEK_PACKET_LENGTH ;
 int aiptek_attribute_group ;
 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct aiptek*) ;
 int sysfs_remove_group (int *,int *) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct aiptek* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void aiptek_disconnect(struct usb_interface *intf)
{
 struct aiptek *aiptek = usb_get_intfdata(intf);



 usb_set_intfdata(intf, ((void*)0));
 if (aiptek != ((void*)0)) {


  usb_kill_urb(aiptek->urb);
  input_unregister_device(aiptek->inputdev);
  sysfs_remove_group(&intf->dev.kobj, &aiptek_attribute_group);
  usb_free_urb(aiptek->urb);
  usb_free_coherent(interface_to_usbdev(intf),
      AIPTEK_PACKET_LENGTH,
      aiptek->data, aiptek->data_dma);
  kfree(aiptek);
 }
}
