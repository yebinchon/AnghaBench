
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_packet {int rhqoff; int rhf; } ;
struct hfi1_ctxtdata {int seq_cnt; int head; } ;


 int RCV_PKT_DONE ;
 int RCV_PKT_OK ;
 int finish_packet (struct hfi1_packet*) ;
 int init_packet (struct hfi1_ctxtdata*,struct hfi1_packet*) ;
 int prescan_rxq (struct hfi1_ctxtdata*,struct hfi1_packet*) ;
 int process_rcv_packet (struct hfi1_packet*,int) ;
 int process_rcv_qp_work (struct hfi1_packet*) ;
 int process_rcv_update (int,struct hfi1_packet*) ;
 int rhf_rcv_seq (int ) ;

int handle_receive_interrupt_nodma_rtail(struct hfi1_ctxtdata *rcd, int thread)
{
 u32 seq;
 int last = RCV_PKT_OK;
 struct hfi1_packet packet;

 init_packet(rcd, &packet);
 seq = rhf_rcv_seq(packet.rhf);
 if (seq != rcd->seq_cnt) {
  last = RCV_PKT_DONE;
  goto bail;
 }

 prescan_rxq(rcd, &packet);

 while (last == RCV_PKT_OK) {
  last = process_rcv_packet(&packet, thread);
  seq = rhf_rcv_seq(packet.rhf);
  if (++rcd->seq_cnt > 13)
   rcd->seq_cnt = 1;
  if (seq != rcd->seq_cnt)
   last = RCV_PKT_DONE;
  process_rcv_update(last, &packet);
 }
 process_rcv_qp_work(&packet);
 rcd->head = packet.rhqoff;
bail:
 finish_packet(&packet);
 return last;
}
