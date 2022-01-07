
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xpad_output_packet {int len; int* data; int pending; } ;
struct usb_xpad {int last_out_packet; int odata_lock; struct xpad_output_packet* out_packets; } ;
typedef int mode_report_ack ;


 size_t XPAD_OUT_CMD_IDX ;
 int memcpy (int*,int const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpad_try_sending_next_out_packet (struct usb_xpad*) ;

__attribute__((used)) static void xpadone_ack_mode_report(struct usb_xpad *xpad, u8 seq_num)
{
 unsigned long flags;
 struct xpad_output_packet *packet =
   &xpad->out_packets[XPAD_OUT_CMD_IDX];
 static const u8 mode_report_ack[] = {
  0x01, 0x20, 0x00, 0x09, 0x00, 0x07, 0x20, 0x02,
  0x00, 0x00, 0x00, 0x00, 0x00
 };

 spin_lock_irqsave(&xpad->odata_lock, flags);

 packet->len = sizeof(mode_report_ack);
 memcpy(packet->data, mode_report_ack, packet->len);
 packet->data[2] = seq_num;
 packet->pending = 1;


 xpad->last_out_packet = -1;
 xpad_try_sending_next_out_packet(xpad);

 spin_unlock_irqrestore(&xpad->odata_lock, flags);
}
