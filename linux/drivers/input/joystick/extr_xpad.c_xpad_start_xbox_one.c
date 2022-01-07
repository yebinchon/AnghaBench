
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {int odata_lock; scalar_t__ init_seq; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpad_try_sending_next_out_packet (struct usb_xpad*) ;

__attribute__((used)) static int xpad_start_xbox_one(struct usb_xpad *xpad)
{
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&xpad->odata_lock, flags);






 xpad->init_seq = 0;
 retval = xpad_try_sending_next_out_packet(xpad);

 spin_unlock_irqrestore(&xpad->odata_lock, flags);

 return retval;
}
