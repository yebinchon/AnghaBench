
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpad_output_packet {int* data; int len; int pending; } ;
struct usb_xpad {int last_out_packet; int odata_lock; struct xpad_output_packet* out_packets; } ;


 size_t XPAD_OUT_CMD_IDX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpad_try_sending_next_out_packet (struct usb_xpad*) ;

__attribute__((used)) static void xpad360w_poweroff_controller(struct usb_xpad *xpad)
{
 unsigned long flags;
 struct xpad_output_packet *packet =
   &xpad->out_packets[XPAD_OUT_CMD_IDX];

 spin_lock_irqsave(&xpad->odata_lock, flags);

 packet->data[0] = 0x00;
 packet->data[1] = 0x00;
 packet->data[2] = 0x08;
 packet->data[3] = 0xC0;
 packet->data[4] = 0x00;
 packet->data[5] = 0x00;
 packet->data[6] = 0x00;
 packet->data[7] = 0x00;
 packet->data[8] = 0x00;
 packet->data[9] = 0x00;
 packet->data[10] = 0x00;
 packet->data[11] = 0x00;
 packet->len = 12;
 packet->pending = 1;


 xpad->last_out_packet = -1;
 xpad_try_sending_next_out_packet(xpad);

 spin_unlock_irqrestore(&xpad->odata_lock, flags);
}
