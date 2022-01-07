
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct es2_ap_dev {int* cport_out_urb_busy; int cport_out_urb_lock; struct urb** cport_out_urb; } ;


 int NUM_CPORT_OUT_URB ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void free_urb(struct es2_ap_dev *es2, struct urb *urb)
{
 unsigned long flags;
 int i;




 spin_lock_irqsave(&es2->cport_out_urb_lock, flags);
 for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
  if (urb == es2->cport_out_urb[i]) {
   es2->cport_out_urb_busy[i] = 0;
   urb = ((void*)0);
   break;
  }
 }
 spin_unlock_irqrestore(&es2->cport_out_urb_lock, flags);


 usb_free_urb(urb);
}
