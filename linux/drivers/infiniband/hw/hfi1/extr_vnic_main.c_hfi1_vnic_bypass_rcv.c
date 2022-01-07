
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int data; } ;
struct hfi1_vnic_vport_info {TYPE_4__* stats; int netdev; struct hfi1_vnic_rx_queue* rxq; } ;
struct hfi1_vnic_rx_queue {int napi; int skbq; } ;
struct hfi1_packet {int tlen; int ebuf; TYPE_2__* rcd; } ;
struct TYPE_5__ {int vesws; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;
struct TYPE_7__ {int rx_fifo_errors; int rx_nohandler; } ;
struct TYPE_8__ {TYPE_3__ netstats; int rx_drop_state; } ;
struct TYPE_6__ {size_t vnic_q_idx; int ctxt; struct hfi1_devdata* dd; } ;


 int HFI1_VNIC_GET_VESWID (int ) ;
 scalar_t__ HFI1_VNIC_RCV_Q_SIZE ;
 int OPA_16B_L4_ETHR ;
 int ULONG_MAX ;
 int XA_PRESENT ;
 int __napi_schedule (int *) ;
 int dd_dev_warn (struct hfi1_devdata*,char*,int,int,int ) ;
 int hfi1_16B_get_l4 (int ) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 int netif_oper_up (int ) ;
 int skb_put (struct sk_buff*,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_purge (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int v_dbg (char*,size_t) ;
 int vport_cntr_lock ;
 struct hfi1_vnic_vport_info* xa_find (int *,unsigned long*,int ,int ) ;
 struct hfi1_vnic_vport_info* xa_load (int *,int) ;

void hfi1_vnic_bypass_rcv(struct hfi1_packet *packet)
{
 struct hfi1_devdata *dd = packet->rcd->dd;
 struct hfi1_vnic_vport_info *vinfo = ((void*)0);
 struct hfi1_vnic_rx_queue *rxq;
 struct sk_buff *skb;
 int l4_type, vesw_id = -1;
 u8 q_idx;

 l4_type = hfi1_16B_get_l4(packet->ebuf);
 if (likely(l4_type == OPA_16B_L4_ETHR)) {
  vesw_id = HFI1_VNIC_GET_VESWID(packet->ebuf);
  vinfo = xa_load(&dd->vnic.vesws, vesw_id);





  if (unlikely(!vinfo)) {
   struct hfi1_vnic_vport_info *vinfo_tmp;
   unsigned long index = 0;

   vinfo_tmp = xa_find(&dd->vnic.vesws, &index, ULONG_MAX,
     XA_PRESENT);
   if (vinfo_tmp) {
    spin_lock(&vport_cntr_lock);
    vinfo_tmp->stats[0].netstats.rx_nohandler++;
    spin_unlock(&vport_cntr_lock);
   }
  }
 }

 if (unlikely(!vinfo)) {
  dd_dev_warn(dd, "vnic rcv err: l4 %d vesw id %d ctx %d\n",
       l4_type, vesw_id, packet->rcd->ctxt);
  return;
 }

 q_idx = packet->rcd->vnic_q_idx;
 rxq = &vinfo->rxq[q_idx];
 if (unlikely(!netif_oper_up(vinfo->netdev))) {
  vinfo->stats[q_idx].rx_drop_state++;
  skb_queue_purge(&rxq->skbq);
  return;
 }

 if (unlikely(skb_queue_len(&rxq->skbq) > HFI1_VNIC_RCV_Q_SIZE)) {
  vinfo->stats[q_idx].netstats.rx_fifo_errors++;
  return;
 }

 skb = netdev_alloc_skb(vinfo->netdev, packet->tlen);
 if (unlikely(!skb)) {
  vinfo->stats[q_idx].netstats.rx_fifo_errors++;
  return;
 }

 memcpy(skb->data, packet->ebuf, packet->tlen);
 skb_put(skb, packet->tlen);
 skb_queue_tail(&rxq->skbq, skb);

 if (napi_schedule_prep(&rxq->napi)) {
  v_dbg("napi %d scheduling\n", q_idx);
  __napi_schedule(&rxq->napi);
 }
}
