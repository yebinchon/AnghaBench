
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipoib_tx_buf {int skb; } ;
struct ipoib_dev_priv {int tx_tail; int tx_head; int flags; } ;
struct ipoib_cm_tx {int tx_tail; struct ipoib_tx_buf* tx_ring; TYPE_1__* qp; int dev; scalar_t__ tx_head; scalar_t__ id; } ;
struct TYPE_2__ {int qp_num; } ;


 int HZ ;
 int IPOIB_FLAG_ADMIN_UP ;
 int dev_kfree_skb_any (int ) ;
 int ib_destroy_cm_id (scalar_t__) ;
 int ib_destroy_qp (TYPE_1__*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int ,scalar_t__,int) ;
 int ipoib_dma_unmap_tx (struct ipoib_dev_priv*,struct ipoib_tx_buf*) ;
 struct ipoib_dev_priv* ipoib_priv (int ) ;
 int ipoib_sendq_size ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,scalar_t__) ;
 unsigned long jiffies ;
 int kfree (struct ipoib_cm_tx*) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int netif_wake_queue (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usleep_range (int,int) ;
 int vfree (struct ipoib_tx_buf*) ;

__attribute__((used)) static void ipoib_cm_tx_destroy(struct ipoib_cm_tx *p)
{
 struct ipoib_dev_priv *priv = ipoib_priv(p->dev);
 struct ipoib_tx_buf *tx_req;
 unsigned long begin;

 ipoib_dbg(priv, "Destroy active connection 0x%x head 0x%x tail 0x%x\n",
    p->qp ? p->qp->qp_num : 0, p->tx_head, p->tx_tail);

 if (p->id)
  ib_destroy_cm_id(p->id);

 if (p->tx_ring) {

  begin = jiffies;
  while ((int) p->tx_tail - (int) p->tx_head < 0) {
   if (time_after(jiffies, begin + 5 * HZ)) {
    ipoib_warn(priv, "timing out; %d sends not completed\n",
        p->tx_head - p->tx_tail);
    goto timeout;
   }

   usleep_range(1000, 2000);
  }
 }

timeout:

 while ((int) p->tx_tail - (int) p->tx_head < 0) {
  tx_req = &p->tx_ring[p->tx_tail & (ipoib_sendq_size - 1)];
  ipoib_dma_unmap_tx(priv, tx_req);
  dev_kfree_skb_any(tx_req->skb);
  netif_tx_lock_bh(p->dev);
  ++p->tx_tail;
  ++priv->tx_tail;
  if (unlikely(priv->tx_head - priv->tx_tail == ipoib_sendq_size >> 1) &&
      netif_queue_stopped(p->dev) &&
      test_bit(IPOIB_FLAG_ADMIN_UP, &priv->flags))
   netif_wake_queue(p->dev);
  netif_tx_unlock_bh(p->dev);
 }

 if (p->qp)
  ib_destroy_qp(p->qp);

 vfree(p->tx_ring);
 kfree(p);
}
