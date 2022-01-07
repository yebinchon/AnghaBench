
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct es2_cport_in {struct urb** urb; } ;
struct es2_ap_dev {int dummy; } ;


 int NUM_CPORT_IN_URB ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void es2_cport_in_disable(struct es2_ap_dev *es2,
     struct es2_cport_in *cport_in)
{
 struct urb *urb;
 int i;

 for (i = 0; i < NUM_CPORT_IN_URB; ++i) {
  urb = cport_in->urb[i];
  usb_kill_urb(urb);
 }
}
