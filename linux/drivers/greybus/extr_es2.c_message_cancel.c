
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int dummy; } ;
struct gb_message {struct urb* hcpriv; TYPE_2__* operation; } ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {int* cport_out_urb_cancelled; int cport_out_urb_lock; struct urb** cport_out_urb; } ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {struct gb_host_device* hd; } ;


 int NUM_CPORT_OUT_URB ;
 struct es2_ap_dev* hd_to_es2 (struct gb_host_device*) ;
 int might_sleep () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_get_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void message_cancel(struct gb_message *message)
{
 struct gb_host_device *hd = message->operation->connection->hd;
 struct es2_ap_dev *es2 = hd_to_es2(hd);
 struct urb *urb;
 int i;

 might_sleep();

 spin_lock_irq(&es2->cport_out_urb_lock);
 urb = message->hcpriv;


 usb_get_urb(urb);


 for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
  if (urb == es2->cport_out_urb[i]) {
   es2->cport_out_urb_cancelled[i] = 1;
   break;
  }
 }
 spin_unlock_irq(&es2->cport_out_urb_lock);

 usb_kill_urb(urb);

 if (i < NUM_CPORT_OUT_URB) {
  spin_lock_irq(&es2->cport_out_urb_lock);
  es2->cport_out_urb_cancelled[i] = 0;
  spin_unlock_irq(&es2->cport_out_urb_lock);
 }

 usb_free_urb(urb);
}
