
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int dummy; } ;
struct urb {struct usb_ctrlrequest* context; } ;


 int kfree (struct usb_ctrlrequest*) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void ap_urb_complete(struct urb *urb)
{
 struct usb_ctrlrequest *dr = urb->context;

 kfree(dr);
 usb_free_urb(urb);
}
