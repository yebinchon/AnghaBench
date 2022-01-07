
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef int u32 ;
struct sk_buff {size_t queue_mapping; int len; scalar_t__ data; } ;
struct opa_vnic_skb_mdata {int flags; int vl; } ;
struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {TYPE_2__* stats; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int (* process_vnic_dma_send ) (struct hfi1_devdata*,size_t,struct hfi1_vnic_vport_info*,struct sk_buff*,int ,size_t) ;} ;
typedef int netdev_tx_t ;
struct TYPE_3__ {int tx_carrier_errors; int tx_fifo_errors; } ;
struct TYPE_4__ {TYPE_1__ netstats; int tx_dlid_zero; int tx_drop_state; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int OPA_VNIC_HDR_LEN ;
 int OPA_VNIC_ICRC_TAIL_LEN ;
 int OPA_VNIC_SKB_MDATA_ENCAP_ERR ;
 int create_bypass_pbc (int ,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int hfi1_vnic_maybe_stop_tx (struct hfi1_vnic_vport_info*,size_t) ;
 int hfi1_vnic_update_tx_counters (struct hfi1_vnic_vport_info*,size_t,struct sk_buff*,int) ;
 int netif_oper_up (struct net_device*) ;
 struct hfi1_vnic_vport_info* opa_vnic_dev_priv (struct net_device*) ;
 int skb_get (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int stub1 (struct hfi1_devdata*,size_t,struct hfi1_vnic_vport_info*,struct sk_buff*,int ,size_t) ;
 scalar_t__ unlikely (int) ;
 int v_dbg (char*,size_t,size_t,...) ;

__attribute__((used)) static netdev_tx_t hfi1_netdev_start_xmit(struct sk_buff *skb,
       struct net_device *netdev)
{
 struct hfi1_vnic_vport_info *vinfo = opa_vnic_dev_priv(netdev);
 u8 pad_len, q_idx = skb->queue_mapping;
 struct hfi1_devdata *dd = vinfo->dd;
 struct opa_vnic_skb_mdata *mdata;
 u32 pkt_len, total_len;
 int err = -EINVAL;
 u64 pbc;

 v_dbg("xmit: queue %d skb len %d\n", q_idx, skb->len);
 if (unlikely(!netif_oper_up(netdev))) {
  vinfo->stats[q_idx].tx_drop_state++;
  goto tx_finish;
 }


 mdata = (struct opa_vnic_skb_mdata *)skb->data;
 skb_pull(skb, sizeof(*mdata));
 if (unlikely(mdata->flags & OPA_VNIC_SKB_MDATA_ENCAP_ERR)) {
  vinfo->stats[q_idx].tx_dlid_zero++;
  goto tx_finish;
 }


 pad_len = -(skb->len + OPA_VNIC_ICRC_TAIL_LEN) & 0x7;
 pad_len += OPA_VNIC_ICRC_TAIL_LEN;






 pkt_len = (skb->len + pad_len) >> 2;
 total_len = pkt_len + 2;

 pbc = create_bypass_pbc(mdata->vl, total_len);

 skb_get(skb);
 v_dbg("pbc 0x%016llX len %d pad_len %d\n", pbc, skb->len, pad_len);
 err = dd->process_vnic_dma_send(dd, q_idx, vinfo, skb, pbc, pad_len);
 if (unlikely(err)) {
  if (err == -ENOMEM)
   vinfo->stats[q_idx].netstats.tx_fifo_errors++;
  else if (err != -EBUSY)
   vinfo->stats[q_idx].netstats.tx_carrier_errors++;
 }

 skb_pull(skb, OPA_VNIC_HDR_LEN);

 if (unlikely(err == -EBUSY)) {
  hfi1_vnic_maybe_stop_tx(vinfo, q_idx);
  dev_kfree_skb_any(skb);
  return NETDEV_TX_BUSY;
 }

tx_finish:

 hfi1_vnic_update_tx_counters(vinfo, q_idx, skb, err);
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
