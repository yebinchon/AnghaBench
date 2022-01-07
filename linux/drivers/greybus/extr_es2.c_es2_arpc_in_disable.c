
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct es2_ap_dev {struct urb** arpc_urb; } ;


 int NUM_ARPC_IN_URB ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void es2_arpc_in_disable(struct es2_ap_dev *es2)
{
 struct urb *urb;
 int i;

 for (i = 0; i < NUM_ARPC_IN_URB; ++i) {
  urb = es2->arpc_urb[i];
  usb_kill_urb(urb);
 }
}
