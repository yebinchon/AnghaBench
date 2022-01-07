
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int backoff; int logcount; int done; int flags; struct ib_sa_multicast* mc; int pkt_queue; TYPE_2__ mcmember; int delay_until; struct net_device* dev; } ;
struct ipoib_dev_priv {int lock; int carrier_on_task; int wq; struct ipoib_mcast* broadcast; } ;
struct ib_sa_multicast {int rec; struct ipoib_mcast* context; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENETRESET ;
 int ETIMEDOUT ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int IPOIB_MCAST_FLAG_SENDONLY ;
 int __ipoib_mcast_schedule_join_thread (struct ipoib_dev_priv*,struct ipoib_mcast*,int) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int dev_kfree_skb_any (int ) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,char*,int ,int) ;
 int ipoib_mcast_join_finish (struct ipoib_mcast*,int *) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,char*,int ,int) ;
 int jiffies ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;
 int queue_work (int ,int *) ;
 int skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ipoib_mcast_join_complete(int status,
         struct ib_sa_multicast *multicast)
{
 struct ipoib_mcast *mcast = multicast->context;
 struct net_device *dev = mcast->dev;
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 ipoib_dbg_mcast(priv, "%sjoin completion for %pI6 (status %d)\n",
   test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags) ?
   "sendonly " : "",
   mcast->mcmember.mgid.raw, status);


 if (status == -ENETRESET) {
  status = 0;
  goto out;
 }

 if (!status)
  status = ipoib_mcast_join_finish(mcast, &multicast->rec);

 if (!status) {
  mcast->backoff = 1;
  mcast->delay_until = jiffies;
  if (mcast == priv->broadcast) {
   spin_lock_irq(&priv->lock);
   queue_work(priv->wq, &priv->carrier_on_task);
   __ipoib_mcast_schedule_join_thread(priv, ((void*)0), 0);
   goto out_locked;
  }
 } else {
  bool silent_fail =
      test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags) &&
      status == -EINVAL;

  if (mcast->logcount < 20) {
   if (status == -ETIMEDOUT || status == -EAGAIN ||
       silent_fail) {
    ipoib_dbg_mcast(priv, "%smulticast join failed for %pI6, status %d\n",
      test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags) ? "sendonly " : "",
      mcast->mcmember.mgid.raw, status);
   } else {
    ipoib_warn(priv, "%smulticast join failed for %pI6, status %d\n",
      test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags) ? "sendonly " : "",
        mcast->mcmember.mgid.raw, status);
   }

   if (!silent_fail)
    mcast->logcount++;
  }

  if (test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags) &&
      mcast->backoff >= 2) {
   mcast->backoff = 1;
   netif_tx_lock_bh(dev);
   while (!skb_queue_empty(&mcast->pkt_queue)) {
    ++dev->stats.tx_dropped;
    dev_kfree_skb_any(skb_dequeue(&mcast->pkt_queue));
   }
   netif_tx_unlock_bh(dev);
  } else {
   spin_lock_irq(&priv->lock);

   __ipoib_mcast_schedule_join_thread(priv, mcast, 1);
   goto out_locked;
  }
 }
out:
 spin_lock_irq(&priv->lock);
out_locked:




 if (status)
  mcast->mc = ((void*)0);
 else
  mcast->mc = multicast;
 clear_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags);
 spin_unlock_irq(&priv->lock);
 complete(&mcast->done);

 return status;
}
