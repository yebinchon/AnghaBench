
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ipoib_neigh {scalar_t__ daddr; int queue; scalar_t__ ah; struct net_device* dev; } ;
struct TYPE_4__ {int flushed; int entries; } ;
struct ipoib_dev_priv {TYPE_2__ ntbl; int flags; } ;


 int IPOIB_NEIGH_TBL_FLUSH ;
 int IPOIB_QPN (scalar_t__) ;
 struct sk_buff* __skb_dequeue (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ipoib_cm_destroy_tx (scalar_t__) ;
 scalar_t__ ipoib_cm_get (struct ipoib_neigh*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int ,scalar_t__) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_put_ah (scalar_t__) ;
 int kfree (struct ipoib_neigh*) ;
 scalar_t__ test_bit (int ,int *) ;

void ipoib_neigh_dtor(struct ipoib_neigh *neigh)
{

 struct net_device *dev = neigh->dev;
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct sk_buff *skb;
 if (neigh->ah)
  ipoib_put_ah(neigh->ah);
 while ((skb = __skb_dequeue(&neigh->queue))) {
  ++dev->stats.tx_dropped;
  dev_kfree_skb_any(skb);
 }
 if (ipoib_cm_get(neigh))
  ipoib_cm_destroy_tx(ipoib_cm_get(neigh));
 ipoib_dbg(ipoib_priv(dev),
    "neigh free for %06x %pI6\n",
    IPOIB_QPN(neigh->daddr),
    neigh->daddr + 4);
 kfree(neigh);
 if (atomic_dec_and_test(&priv->ntbl.entries)) {
  if (test_bit(IPOIB_NEIGH_TBL_FLUSH, &priv->flags))
   complete(&priv->ntbl.flushed);
 }
}
