
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int pkt_type; struct net_device* dev; scalar_t__ len; scalar_t__ data; int protocol; } ;
struct TYPE_5__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct ipoib_header {int proto; } ;
struct TYPE_6__ {int rx_sge; int rx_wr; int passive_ids; int rx_reap_task; int rx_reap_list; struct ipoib_cm_rx_buf* srq_ring; int rx_drain_list; } ;
struct ipoib_dev_priv {TYPE_3__ cm; int ca; int lock; int wq; } ;
struct ipoib_cm_rx_buf {int * mapping; struct sk_buff* skb; } ;
struct ipoib_cm_rx {scalar_t__ state; int recv_count; int list; scalar_t__ jiffies; struct ipoib_cm_rx_buf* rx_ring; } ;
struct ib_wc {unsigned int wr_id; int byte_len; int slid; int vendor_err; int status; TYPE_1__* qp; } ;
struct TYPE_4__ {struct ipoib_cm_rx* qp_context; } ;


 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 int IB_WC_SUCCESS ;
 int IPOIB_CM_COPYBREAK ;
 int IPOIB_CM_HEAD_SIZE ;
 unsigned int IPOIB_CM_RX_DRAIN_WRID ;
 scalar_t__ IPOIB_CM_RX_LIVE ;
 scalar_t__ IPOIB_CM_RX_RESERVE ;
 int IPOIB_CM_RX_SG ;
 unsigned int IPOIB_CM_RX_UPDATE_MASK ;
 scalar_t__ IPOIB_CM_RX_UPDATE_TIME ;
 unsigned int IPOIB_OP_CM ;
 unsigned int IPOIB_OP_RECV ;
 int PACKET_HOST ;
 int PAGE_ALIGN (scalar_t__) ;
 int PAGE_SIZE ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ib_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int ib_dma_sync_single_for_device (int ,int ,int,int ) ;
 struct sk_buff* ipoib_cm_alloc_rx_skb (struct net_device*,struct ipoib_cm_rx_buf*,unsigned int,int,int *,int ) ;
 int ipoib_cm_dma_unmap_rx (struct ipoib_dev_priv*,int,int *) ;
 int ipoib_cm_has_srq (struct net_device*) ;
 int ipoib_cm_post_receive_nonsrq (struct net_device*,struct ipoib_cm_rx*,int *,int ,unsigned int) ;
 int ipoib_cm_post_receive_srq (struct net_device*,unsigned int) ;
 int ipoib_cm_start_rx_drain (struct ipoib_dev_priv*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,unsigned int,...) ;
 int ipoib_dbg_data (struct ipoib_dev_priv*,char*,unsigned int,int ) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 unsigned int ipoib_recvq_size ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,unsigned int,...) ;
 scalar_t__ jiffies ;
 int list_move (int *,int *) ;
 int list_splice_init (int *,int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ min_t (int ,int,int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 int queue_work (int ,int *) ;
 int skb_add_pseudo_hdr (struct sk_buff*) ;
 int skb_copy_from_linear_data (struct sk_buff*,scalar_t__,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_frags (struct sk_buff*,int ,unsigned int,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;
 int u32 ;
 scalar_t__ unlikely (int) ;

void ipoib_cm_handle_rx_wc(struct net_device *dev, struct ib_wc *wc)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_cm_rx_buf *rx_ring;
 unsigned int wr_id = wc->wr_id & ~(IPOIB_OP_CM | IPOIB_OP_RECV);
 struct sk_buff *skb, *newskb;
 struct ipoib_cm_rx *p;
 unsigned long flags;
 u64 mapping[IPOIB_CM_RX_SG];
 int frags;
 int has_srq;
 struct sk_buff *small_skb;

 ipoib_dbg_data(priv, "cm recv completion: id %d, status: %d\n",
         wr_id, wc->status);

 if (unlikely(wr_id >= ipoib_recvq_size)) {
  if (wr_id == (IPOIB_CM_RX_DRAIN_WRID & ~(IPOIB_OP_CM | IPOIB_OP_RECV))) {
   spin_lock_irqsave(&priv->lock, flags);
   list_splice_init(&priv->cm.rx_drain_list, &priv->cm.rx_reap_list);
   ipoib_cm_start_rx_drain(priv);
   queue_work(priv->wq, &priv->cm.rx_reap_task);
   spin_unlock_irqrestore(&priv->lock, flags);
  } else
   ipoib_warn(priv, "cm recv completion event with wrid %d (> %d)\n",
       wr_id, ipoib_recvq_size);
  return;
 }

 p = wc->qp->qp_context;

 has_srq = ipoib_cm_has_srq(dev);
 rx_ring = has_srq ? priv->cm.srq_ring : p->rx_ring;

 skb = rx_ring[wr_id].skb;

 if (unlikely(wc->status != IB_WC_SUCCESS)) {
  ipoib_dbg(priv,
     "cm recv error (status=%d, wrid=%d vend_err %#x)\n",
     wc->status, wr_id, wc->vendor_err);
  ++dev->stats.rx_dropped;
  if (has_srq)
   goto repost;
  else {
   if (!--p->recv_count) {
    spin_lock_irqsave(&priv->lock, flags);
    list_move(&p->list, &priv->cm.rx_reap_list);
    spin_unlock_irqrestore(&priv->lock, flags);
    queue_work(priv->wq, &priv->cm.rx_reap_task);
   }
   return;
  }
 }

 if (unlikely(!(wr_id & IPOIB_CM_RX_UPDATE_MASK))) {
  if (p && time_after_eq(jiffies, p->jiffies + IPOIB_CM_RX_UPDATE_TIME)) {
   spin_lock_irqsave(&priv->lock, flags);
   p->jiffies = jiffies;


   if (p->state == IPOIB_CM_RX_LIVE)
    list_move(&p->list, &priv->cm.passive_ids);
   spin_unlock_irqrestore(&priv->lock, flags);
  }
 }

 if (wc->byte_len < IPOIB_CM_COPYBREAK) {
  int dlen = wc->byte_len;

  small_skb = dev_alloc_skb(dlen + IPOIB_CM_RX_RESERVE);
  if (small_skb) {
   skb_reserve(small_skb, IPOIB_CM_RX_RESERVE);
   ib_dma_sync_single_for_cpu(priv->ca, rx_ring[wr_id].mapping[0],
         dlen, DMA_FROM_DEVICE);
   skb_copy_from_linear_data(skb, small_skb->data, dlen);
   ib_dma_sync_single_for_device(priv->ca, rx_ring[wr_id].mapping[0],
            dlen, DMA_FROM_DEVICE);
   skb_put(small_skb, dlen);
   skb = small_skb;
   goto copied;
  }
 }

 frags = PAGE_ALIGN(wc->byte_len -
      min_t(u32, wc->byte_len, IPOIB_CM_HEAD_SIZE)) /
  PAGE_SIZE;

 newskb = ipoib_cm_alloc_rx_skb(dev, rx_ring, wr_id, frags,
           mapping, GFP_ATOMIC);
 if (unlikely(!newskb)) {




  ipoib_dbg(priv, "failed to allocate receive buffer %d\n", wr_id);
  ++dev->stats.rx_dropped;
  goto repost;
 }

 ipoib_cm_dma_unmap_rx(priv, frags, rx_ring[wr_id].mapping);
 memcpy(rx_ring[wr_id].mapping, mapping, (frags + 1) * sizeof(*mapping));

 ipoib_dbg_data(priv, "received %d bytes, SLID 0x%04x\n",
         wc->byte_len, wc->slid);

 skb_put_frags(skb, IPOIB_CM_HEAD_SIZE, wc->byte_len, newskb);

copied:
 skb->protocol = ((struct ipoib_header *) skb->data)->proto;
 skb_add_pseudo_hdr(skb);

 ++dev->stats.rx_packets;
 dev->stats.rx_bytes += skb->len;

 skb->dev = dev;

 skb->pkt_type = PACKET_HOST;
 netif_receive_skb(skb);

repost:
 if (has_srq) {
  if (unlikely(ipoib_cm_post_receive_srq(dev, wr_id)))
   ipoib_warn(priv, "ipoib_cm_post_receive_srq failed "
       "for buf %d\n", wr_id);
 } else {
  if (unlikely(ipoib_cm_post_receive_nonsrq(dev, p,
         &priv->cm.rx_wr,
         priv->cm.rx_sge,
         wr_id))) {
   --p->recv_count;
   ipoib_warn(priv, "ipoib_cm_post_receive_nonsrq failed "
       "for buf %d\n", wr_id);
  }
 }
}
