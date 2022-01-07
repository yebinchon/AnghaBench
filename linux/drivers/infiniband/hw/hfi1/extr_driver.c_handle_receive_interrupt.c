
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hfi1_packet {scalar_t__ rhqoff; scalar_t__ rsize; int rhf; int * rhf_addr; } ;
struct hfi1_devdata {scalar_t__ do_drop; int drop_packet; } ;
struct hfi1_ctxtdata {scalar_t__ seq_cnt; int rhf_offset; scalar_t__ head; int ctxt; int flags; TYPE_1__* ppd; scalar_t__ rcvhdrq; struct hfi1_devdata* dd; } ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ host_link_state; } ;


 int DMA_RTAIL ;
 int DROP_PACKET_OFF ;
 scalar_t__ DROP_PACKET_ON ;
 int HFI1_CAP_KGET_MASK (int ,int ) ;
 int HFI1_CTRL_CTXT ;
 scalar_t__ HLS_UP_ARMED ;
 int RCV_PKT_DONE ;
 int RCV_PKT_OK ;
 scalar_t__ atomic_xchg (int *,int ) ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int finish_packet (struct hfi1_packet*) ;
 scalar_t__ get_rcvhdrtail (struct hfi1_ctxtdata*) ;
 int init_packet (struct hfi1_ctxtdata*,struct hfi1_packet*) ;
 int prescan_rxq (struct hfi1_ctxtdata*,struct hfi1_packet*) ;
 int process_rcv_packet (struct hfi1_packet*,int) ;
 int process_rcv_qp_work (struct hfi1_packet*) ;
 int process_rcv_update (int,struct hfi1_packet*) ;
 scalar_t__ rhf_rcv_seq (int ) ;
 int rhf_to_cpu (int *) ;
 scalar_t__ set_armed_to_active (struct hfi1_ctxtdata*,struct hfi1_packet*,struct hfi1_devdata*) ;
 int set_dma_rtail (struct hfi1_devdata*,int ) ;
 int set_nodma_rtail (struct hfi1_devdata*,int ) ;
 int skip_rcv_packet (struct hfi1_packet*,int) ;
 int smp_rmb () ;
 scalar_t__ unlikely (int) ;

int handle_receive_interrupt(struct hfi1_ctxtdata *rcd, int thread)
{
 struct hfi1_devdata *dd = rcd->dd;
 u32 hdrqtail;
 int needset, last = RCV_PKT_OK;
 struct hfi1_packet packet;
 int skip_pkt = 0;


 needset = (rcd->ctxt == HFI1_CTRL_CTXT) ? 0 : 1;

 init_packet(rcd, &packet);

 if (!HFI1_CAP_KGET_MASK(rcd->flags, DMA_RTAIL)) {
  u32 seq = rhf_rcv_seq(packet.rhf);

  if (seq != rcd->seq_cnt) {
   last = RCV_PKT_DONE;
   goto bail;
  }
  hdrqtail = 0;
 } else {
  hdrqtail = get_rcvhdrtail(rcd);
  if (packet.rhqoff == hdrqtail) {
   last = RCV_PKT_DONE;
   goto bail;
  }
  smp_rmb();





  if (rcd->ctxt == HFI1_CTRL_CTXT) {
   u32 seq = rhf_rcv_seq(packet.rhf);

   if (seq != rcd->seq_cnt)
    skip_pkt = 1;
  }
 }

 prescan_rxq(rcd, &packet);

 while (last == RCV_PKT_OK) {
  if (unlikely(dd->do_drop &&
        atomic_xchg(&dd->drop_packet, DROP_PACKET_OFF) ==
        DROP_PACKET_ON)) {
   dd->do_drop = 0;


   packet.rhqoff += packet.rsize;
   packet.rhf_addr = (__le32 *)rcd->rcvhdrq +
       packet.rhqoff +
       rcd->rhf_offset;
   packet.rhf = rhf_to_cpu(packet.rhf_addr);

  } else if (skip_pkt) {
   last = skip_rcv_packet(&packet, thread);
   skip_pkt = 0;
  } else {

   if (unlikely(rcd->ppd->host_link_state ==
         HLS_UP_ARMED) &&
       set_armed_to_active(rcd, &packet, dd))
    goto bail;
   last = process_rcv_packet(&packet, thread);
  }

  if (!HFI1_CAP_KGET_MASK(rcd->flags, DMA_RTAIL)) {
   u32 seq = rhf_rcv_seq(packet.rhf);

   if (++rcd->seq_cnt > 13)
    rcd->seq_cnt = 1;
   if (seq != rcd->seq_cnt)
    last = RCV_PKT_DONE;
   if (needset) {
    dd_dev_info(dd, "Switching to NO_DMA_RTAIL\n");
    set_nodma_rtail(dd, rcd->ctxt);
    needset = 0;
   }
  } else {
   if (packet.rhqoff == hdrqtail)
    last = RCV_PKT_DONE;




   if (rcd->ctxt == HFI1_CTRL_CTXT) {
    u32 seq = rhf_rcv_seq(packet.rhf);

    if (++rcd->seq_cnt > 13)
     rcd->seq_cnt = 1;
    if (!last && (seq != rcd->seq_cnt))
     skip_pkt = 1;
   }

   if (needset) {
    dd_dev_info(dd,
         "Switching to DMA_RTAIL\n");
    set_dma_rtail(dd, rcd->ctxt);
    needset = 0;
   }
  }

  process_rcv_update(last, &packet);
 }

 process_rcv_qp_work(&packet);
 rcd->head = packet.rhqoff;

bail:




 finish_packet(&packet);
 return last;
}
