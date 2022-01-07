
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rdma_netdev {int (* send ) (struct net_device*,struct sk_buff*,int ,int ) ;} ;
struct TYPE_4__ {int tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct ipoib_pseudo_header {scalar_t__ hwaddr; } ;
struct ipoib_path {TYPE_1__* ah; int pathrec; int queue; int query; } ;
struct ipoib_dev_priv {int lock; int broadcast; } ;
struct TYPE_3__ {int ah; int last_send; int valid; } ;


 scalar_t__ IPOIB_MAX_PATH_REC_QUEUE ;
 int IPOIB_QPN (scalar_t__) ;
 int __path_add (struct net_device*,struct ipoib_path*) ;
 struct ipoib_path* __path_find (struct net_device*,scalar_t__) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int be32_to_cpu (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int init_path_rec (struct ipoib_dev_priv*,struct ipoib_path*,scalar_t__) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int ) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 struct rdma_netdev* netdev_priv (struct net_device*) ;
 struct ipoib_path* path_rec_create (struct net_device*,scalar_t__) ;
 scalar_t__ path_rec_start (struct net_device*,struct ipoib_path*) ;
 int push_pseudo_header (struct sk_buff*,scalar_t__) ;
 int sa_path_get_dlid (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*,struct sk_buff*,int ,int ) ;

__attribute__((used)) static void unicast_arp_send(struct sk_buff *skb, struct net_device *dev,
        struct ipoib_pseudo_header *phdr)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct rdma_netdev *rn = netdev_priv(dev);
 struct ipoib_path *path;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);


 if (!priv->broadcast)
  goto drop_and_unlock;

 path = __path_find(dev, phdr->hwaddr + 4);
 if (!path || !path->ah || !path->ah->valid) {
  if (!path) {
   path = path_rec_create(dev, phdr->hwaddr + 4);
   if (!path)
    goto drop_and_unlock;
   __path_add(dev, path);
  } else {




   init_path_rec(priv, path, phdr->hwaddr + 4);
  }
  if (!path->query && path_rec_start(dev, path)) {
   goto drop_and_unlock;
  }

  if (skb_queue_len(&path->queue) < IPOIB_MAX_PATH_REC_QUEUE) {
   push_pseudo_header(skb, phdr->hwaddr);
   __skb_queue_tail(&path->queue, skb);
   goto unlock;
  } else {
   goto drop_and_unlock;
  }
 }

 spin_unlock_irqrestore(&priv->lock, flags);
 ipoib_dbg(priv, "Send unicast ARP to %08x\n",
    be32_to_cpu(sa_path_get_dlid(&path->pathrec)));
 path->ah->last_send = rn->send(dev, skb, path->ah->ah,
           IPOIB_QPN(phdr->hwaddr));
 return;

drop_and_unlock:
 ++dev->stats.tx_dropped;
 dev_kfree_skb_any(skb);
unlock:
 spin_unlock_irqrestore(&priv->lock, flags);
}
