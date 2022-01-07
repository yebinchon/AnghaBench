
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_5__ {int tx_errors; int tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct ipoib_tx_buf {struct sk_buff* skb; } ;
struct ipoib_dev_priv {int tx_head; int tx_tail; int send_napi; int send_cq; int ca; } ;
struct ipoib_cm_tx {int max_send_sge; scalar_t__ mtu; int tx_head; TYPE_1__* qp; struct ipoib_tx_buf* tx_ring; } ;
struct TYPE_6__ {unsigned int nr_frags; } ;
struct TYPE_4__ {int qp_num; } ;


 int IB_CQ_NEXT_COMP ;
 int IB_CQ_REPORT_MISSED_EVENTS ;
 scalar_t__ IPOIB_ENCAP_LEN ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ib_req_notify_cq (int ,int) ;
 int ipoib_cm_skb_too_long (struct net_device*,struct sk_buff*,scalar_t__) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int ) ;
 int ipoib_dbg_data (struct ipoib_dev_priv*,char*,int,scalar_t__,int ) ;
 int ipoib_dma_map_tx (int ,struct ipoib_tx_buf*) ;
 int ipoib_dma_unmap_tx (struct ipoib_dev_priv*,struct ipoib_tx_buf*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_sendq_size ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,...) ;
 int napi_schedule (int *) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int post_send (struct ipoib_dev_priv*,struct ipoib_cm_tx*,int,struct ipoib_tx_buf*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void ipoib_cm_send(struct net_device *dev, struct sk_buff *skb, struct ipoib_cm_tx *tx)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_tx_buf *tx_req;
 int rc;
 unsigned int usable_sge = tx->max_send_sge - !!skb_headlen(skb);

 if (unlikely(skb->len > tx->mtu)) {
  ipoib_warn(priv, "packet len %d (> %d) too long to send, dropping\n",
      skb->len, tx->mtu);
  ++dev->stats.tx_dropped;
  ++dev->stats.tx_errors;
  ipoib_cm_skb_too_long(dev, skb, tx->mtu - IPOIB_ENCAP_LEN);
  return;
 }
 if (skb_shinfo(skb)->nr_frags > usable_sge) {
  if (skb_linearize(skb) < 0) {
   ipoib_warn(priv, "skb could not be linearized\n");
   ++dev->stats.tx_dropped;
   ++dev->stats.tx_errors;
   dev_kfree_skb_any(skb);
   return;
  }

  if (skb_shinfo(skb)->nr_frags > usable_sge) {
   ipoib_warn(priv, "too many frags after skb linearize\n");
   ++dev->stats.tx_dropped;
   ++dev->stats.tx_errors;
   dev_kfree_skb_any(skb);
   return;
  }
 }
 ipoib_dbg_data(priv, "sending packet: head 0x%x length %d connection 0x%x\n",
         tx->tx_head, skb->len, tx->qp->qp_num);
 tx_req = &tx->tx_ring[tx->tx_head & (ipoib_sendq_size - 1)];
 tx_req->skb = skb;

 if (unlikely(ipoib_dma_map_tx(priv->ca, tx_req))) {
  ++dev->stats.tx_errors;
  dev_kfree_skb_any(skb);
  return;
 }

 if ((priv->tx_head - priv->tx_tail) == ipoib_sendq_size - 1) {
  ipoib_dbg(priv, "TX ring 0x%x full, stopping kernel net queue\n",
     tx->qp->qp_num);
  netif_stop_queue(dev);
 }

 skb_orphan(skb);
 skb_dst_drop(skb);

 if (netif_queue_stopped(dev)) {
  rc = ib_req_notify_cq(priv->send_cq, IB_CQ_NEXT_COMP |
          IB_CQ_REPORT_MISSED_EVENTS);
  if (unlikely(rc < 0))
   ipoib_warn(priv, "IPoIB/CM:request notify on send CQ failed\n");
  else if (rc)
   napi_schedule(&priv->send_napi);
 }

 rc = post_send(priv, tx, tx->tx_head & (ipoib_sendq_size - 1), tx_req);
 if (unlikely(rc)) {
  ipoib_warn(priv, "IPoIB/CM:post_send failed, error %d\n", rc);
  ++dev->stats.tx_errors;
  ipoib_dma_unmap_tx(priv, tx_req);
  dev_kfree_skb_any(skb);

  if (netif_queue_stopped(dev))
   netif_wake_queue(dev);
 } else {
  netif_trans_update(dev);
  ++tx->tx_head;
  ++priv->tx_head;
 }
}
